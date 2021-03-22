# CMSC131-Assembly-Makefile
Makefile to automate compiling and debugging assembly code in CMSC 131. Simply place the makefile in the same directory as your `.asm` file.

To assemble and run `sample.asm`:
```
make
```
To assemble and debug `sample.asm` using gdb:
```
make d
```
To assemble and debug `sample.asm` using gdb with Text User Interface:
```
make ui
```
To assemble and debug `sample.asm` using gdb with commands from a separate `input.txt` file:
```
make i
```
To delete `sample.o`:
```
make clean
```
To delete all `.o` in the directory:
```
make cleanall
```
You can use `f=filename` to specify the filename of the `.asm` file without editing the Makefile:
```
make f=helloworld
make d f=helloworld
make ui f=helloworld
make i f=helloworld
```
This will do the commands to `helloworld.asm` instead of `sample.asm`.
