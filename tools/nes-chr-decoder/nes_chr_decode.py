import getopt
import os.path
import png
import sys

CHAR_WIDTH = 8  # character width in pixels
CHAR_HEIGHT = 8  # character height in pixels
BYTES_PER_CHAR = 16  # bytes per character in CHR data
CHARS_PER_ROW = 16  # characters per row in output image

DEFAULT_PALETTE = ("000000", "555555", "aaaaaa", "ffffff")

def decode_color_code(color):
    """Decode an HTML color code (6 hexadecimal digits)."""

    try:
        if len(color) != 6:
            raise ValueError
        color = int(color, 16)
    except ValueError:
        exit("Error: invalid color code.")
    red = color >> 16
    green = (color >> 8) & 0xff
    blue = color & 0xff
    return (red, green, blue)

def parse_arguments():
    """Parse command line arguments using getopt."""

    longOpts = ("color0=", "color1=", "color2=", "color3=", "width=")
    try:
        (opts, args) = getopt.getopt(sys.argv[1:], "", longOpts)
    except getopt.GetoptError:
        exit("Error: invalid option. See the readme file.")

    if len(args) != 2:
        exit("Error: invalid number of arguments. See the readme file.")

    opts = dict(opts)

    global CHARS_PER_ROW
    CHARS_PER_ROW = int(opts.get("--width", 2))

    # colors
    color0 = decode_color_code(opts.get("--color0", DEFAULT_PALETTE[0]))
    color1 = decode_color_code(opts.get("--color1", DEFAULT_PALETTE[1]))
    color2 = decode_color_code(opts.get("--color2", DEFAULT_PALETTE[2]))
    color3 = decode_color_code(opts.get("--color3", DEFAULT_PALETTE[3]))

    # source file
    source = args[0]
    if not os.path.isfile(source):
        exit("Error: the input file does not exist.")
    try:
        size = os.path.getsize(source)
    except OSError:
        exit("Error getting input file size.")
    (charRowCount, remainder) = divmod(size, CHARS_PER_ROW * BYTES_PER_CHAR)
    if charRowCount == 0 or remainder:
        exit("Error: invalid input file size.")

    # target file
    target = args[1]
    #if os.path.exists(target):
    #    exit("Error: the output file already exists.")
    dir = os.path.dirname(target)
    if dir != "" and not os.path.isdir(dir):
        exit("Error: the output directory does not exist.")

    return {
        "palette": (color0, color1, color2, color3),
        "source": source,
        "target": target,
    }

def generate_character_rows(source):
    """Yield one character row of CHR data per call."""

    size = source.seek(0, 2)
    source.seek(0)
    while source.tell() < size:
        yield source.read(CHARS_PER_ROW * BYTES_PER_CHAR)

def decode_character_slice(loByte, hiByte):
    """Decode one pixel row of one character."""

    # the data is planar; decode least significant bits first
    pixels = []
    for x in range(CHAR_WIDTH):
        pixels.append((loByte & 1) | ((hiByte & 1) << 1))
        loByte >>= 1
        hiByte >>= 1
    # return the pixels in correct order
    return reversed(pixels)

def generate_pixel_rows(source, settings):
    """Generate PNG pixel rows from the CHR data file."""

    pixels = []  # the pixel row to yield
    for chrData in generate_character_rows(source):  # character rows
        for pixelY in range(CHAR_HEIGHT):  # pixel rows
            pixels.clear()
            for charX in range(CHARS_PER_ROW):  # characters
                # get low and high byte of current character slice
                chrDataIndex = charX * BYTES_PER_CHAR + pixelY
                loByte = chrData[chrDataIndex]
                hiByte = chrData[chrDataIndex + 8]
                # decode slice and add to pixel row
                pixels.extend(decode_character_slice(loByte, hiByte))
            yield pixels

def main():
    settings = parse_arguments()

    sourceSize = os.path.getsize(settings["source"])
    charRowCount = sourceSize // (CHARS_PER_ROW * BYTES_PER_CHAR)
    width = CHARS_PER_ROW * CHAR_WIDTH
    height = charRowCount * CHAR_HEIGHT
    palette = ((0,0,0), (255,0,0), (255,128,0), (255,255,255))

    targetImage = png.Writer(
        width=width,
        height=height,
        bitdepth=2,  # 4 colors
        palette=settings["palette"],
        compression=9  # maximum
    )

    with open(settings["source"], "rb") as source, \
    open(settings["target"], "wb") as target:
        targetRows = generate_pixel_rows(source, settings)
        targetImage.write(target, targetRows)

if __name__ == "__main__":
    main()
