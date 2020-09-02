# nes-chr-encode
Converts a PNG file to an NES CHR data file.

Note: requires the [**PyPNG** module](http://github.com/drj11/pypng).

Hint: my [`nes-chr-decode`](http://github.com/qalle2/nes-chr-decode) does the reverse thing (converts an NES CHR data file to a PNG file).

## Command line arguments
Syntax: [*options*] *input_file* *output_file*

### *options*
* `--color0`=*color*
  * What color in the PNG image should be converted to color 0 in the CHR data.
  * *color*: see below.
  * The default is `000000` (black).
* `--color1`=*color*
  * What color in the PNG image should be converted to color 1 in the CHR data.
  * *color*: see below.
  * The default is `555555` (dark gray).
* `--color2`=*color*
  * What color in the PNG image should be converted to color 2 in the CHR data.
  * *color*: see below.
  * The default is `aaaaaa` (light gray).
* `--color3`=*color*
  * What color in the PNG image should be converted to color 3 in the CHR data.
  * *color*: see below.
  * The default is `ffffff` (white).

Notes:
* *color* is an HTML-style color code (six hexadecimal digits, `RRGGBB`, case insensitive).
* All the *color*s must be distinct.
* The input file may only contain the *color*s.
* However, the input file need not contain all the *color*s.

### *input_file*
* The PNG image file to read.
* The width must be 16 NES characters, i.e. 128 pixels.
* The height must be a multiple of 1 NES character, i.e. 8 pixels.
* The image must have 4 unique colors or less. (They all have to be specified by the `--color`*n* options above.)

### *output_file*
* The NES CHR data file to write.
* The file size will be a multiple of 16 NES characters, i.e. 256 bytes.
* The file must not already exist (it will not be overwritten).

## Example

Convert `smb-chr.png` to `smb.chr`:
```
python nes_chr_encode.py smb-chr.png smb.chr
```
