nasm -f elf64 -o getuserinput.o *ut.s
ld -o getuserinput *ut.o
./getuserinput