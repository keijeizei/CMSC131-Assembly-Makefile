#put the filename of your file here, or use f=<filename> in the make command
f = sample

default: load

#debug: debug using GDB
d: link
	gdb -quiet -ex 'file $(f)' -ex 'set disassembly-flavor intel'

#ui: debug using GDB TUI
ui: link
	gdb -quiet -tui -ex 'file $(f)' -ex 'set disassembly-flavor intel' -ex 'layout asm' -ex 'layout regs'

#input: debug using commands from a separate file input.txt
i: link
	gdb -quiet $(f) < input.txt

load: link
	./$(f)
link: assemble
	ld -o $(f) $(f).o
assemble:
	nasm -f elf64 $(f).asm
	
clean:
	$(RM) $(f).o
cleanall:
	$(RM) *.o
