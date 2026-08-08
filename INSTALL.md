# Build instructions

It works mostly like other GBA decompilation projects. You should be able to use either a POSIX-like
OS (macOS/Linux/etc) or Windows using msys2/Cygwin. Only Linux through WSL1 has been tested
recently, though.

## Prerequisites

* Host C/C++ compiler (gcc or clang)
* Guest binutils (`binutils-arm-none-eabi` -- or devkitARM)
* GNU Make (also known as `gmake`, or just `make` on Linux)
* Python 3 and `pip`
* `libpng` + development headers
* `pkg-config`
* A base copy of Mother 1+2

Guidance for how to obtain many of these can be found in the platform-specific instructions on
[this pokeemerald documentation page](https://github.com/pret/pokeemerald/blob/9a83a2bbe8e097e62c00f1dbd56849766775d7b6/INSTALL.md).
This link leads to a specific commit from the time of writing, but you may get more up to date
information by looking at the latest commit for this page.

All commands must be run in Bash, or at least a POSIX-like shell. Windows Command Prompt will not work.

## Building the tools

Note that the guest C compiler is [in another repository](https://github.com/pret/agbcc).
It needs to be installed into the root directory for this repository, once you build it.

    git clone https://github.com/Normmatt/m12.git
    git clone https://github.com/pret/agbcc.git
    cd agbcc
    ./build.sh
    ./install.sh ../m12
    cd ../m12

The rest of the tools can be built by running `build-tools.sh`. Note that one of the tools is
written in Python and requires a dependency; you may wish to restrict this dependency and tool
package to a
[virtual environment](https://packaging.python.org/en/latest/guides/installing-using-pip-and-virtual-environments/)
so that it only affects this repository.

Note the `.` before the name of the venv activation script! (Bash also lets you type `source`
instead.)

    python -m venv .venv
    . .venv/bin/activate
    python -m pip install --upgrade pip

Once you've (optionally) created the virtual environment, build the tools.

    ./build-tools.sh

## Adding the base ROM to the repository

Put your copy of Mother 1+2 in the root of the repository and name it `baserom.gba`. It should be a
GBA ROM that takes up 16 MiB of space.

## Building the game

    make

If everything goes right, you should get a message that mother12.gba is `OK`.

You can also speed up the building process by using the `-j` option with `make`. See the pokeemerald
documentation for more info about the number to use as an argument to `-j`.
