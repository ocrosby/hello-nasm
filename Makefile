ASM = nasm
ASM_FLAGS = -f macho64
LD = ld
LD_FLAGS = -macos_version_min 10.14 -lSystem

SRC = assembly/hello.asm
OBJ = hello.o
OUT = hello

all: $(OUT)

$(OUT): $(OBJ)
	$(LD) $(LD_FLAGS) -o $@ $^

$(OBJ): $(SRC)
	$(ASM) $(ASM_FLAGS) -o $@ $<

clean:
	rm -f $(OBJ) $(OUT)

.PHONY: all clean