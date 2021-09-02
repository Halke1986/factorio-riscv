MEMORY
{
    ram : ORIGIN = 0x0000000, LENGTH = 0x4000000
    rom : ORIGIN = 0x4000000, LENGTH = 0x4000000
}
SECTIONS
{
    .text.init : { *(.text.init*) } > rom
    .text : { *(.text*) } > rom
    .srodata : { *(.srodata*) } > ram
    .rodata : { *(.rodata*) } > ram
    .data : { *(.data*) } > ram
    .bss : { *(.bss*) } > ram
}