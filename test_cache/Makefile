BUILD_PATH=build/
ELF_PATH=$(BUILD_PATH)main.elf
ARM=arm-none-eabi

GCC=$(ARM)-gcc
ASM=$(ARM)-as
OBJDUMP=$(ARM)-objdump

LD_SCRIPT = cortex_r52.ld  # Remplace par le nom de ton fichier .ld

CLFAGS= -g -mcpu=cortex-r52 -nostartfiles 
LDFLAGS = -T $(LD_SCRIPT) -Wl,--gc-sections -Wl,-Map=$(BUILD_PATH)output.map

all : build $(ELF_PATH) $(BUILD_PATH)main.lst

build:
	mkdir -p build

rebuild: clean all

$(ELF_PATH): $(BUILD_PATH)main.o $(BUILD_PATH)startup.o
	$(GCC)  $(CLFAGS) $(LDFLAGS) -o $@ $^
	

$(BUILD_PATH)main.o: main.c
	$(GCC) $(CLFAGS) -o $@ -c $^

$(BUILD_PATH)startup.o: statup.asm
	$(ASM) -g -mcpu=cortex-r52 -o $@ -c $^

$(BUILD_PATH)main.lst: $(ELF_PATH)
	$(OBJDUMP) -d $< > $@

clean:
	rm build/*