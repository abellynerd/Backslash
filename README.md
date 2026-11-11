# {Backslash}: LaTeX keyboard for mathematicians

## Installation guide (Windows):
1. Ensure [AutoHotKey v2](https://www.autohotkey.com/v2/) is installed on your computer. As of right now, this only works on Windows and Linux.
2. Download the {backslash} version file for your keyboard layout (QWERTY or Colemak)
3. Move it to some place permanent, such as a "Macros" file in your documents folder
4. Open your computer's startup folder (press Windows + R and run "shell:startup")
5. Copy the file to the startup folder
6. Double click the file to run (after this, your computer should automatically run it on startup. If not, access the file again and run it manually)
7. Open a blank LaTeX document and test every command out, once with alt and once with alt-lock. This should help you familiarize yourself with the commands and ensure your program is configured properly.

## Usage Tips:
On the [reference image](), black letters are for alt and blue are for alt+shift. On alt-lock (press alt + capslock), black letters type by default and blue work with just shift. Also, you can hold alt while on alt-lock to type a normal letter. Numbers always work without holding anything down. Alt-s types a summation by running an input window asking for your index, start point, and endpoint. If you would like a blank Sigma, simply ignore the popup and press enter.

## Remapping:
Feel free to customize the keyboard to your own needs! Open the program file in a text editor (like [VSCode](https://code.visualstudio.com/)) and change the keys/functions as you wish. If you are unfamiliar with AutoHotKey syntax, refer to the [documentation here](https://www.autohotkey.com/docs/v2/). I found it helpful to visualize the keyboard first by overlaying text on a blank keyboard image (which is how I made the reference image).
