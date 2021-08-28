MEMORY
{
    ram : ORIGIN = 0x0000000, LENGTH = 0x4000000
    rom : ORIGIN = 0x4000000, LENGTH = 0x4000000
}
SECTIONS
{
    .text.init : { *(.text.init*) } > rom
    .text : { *(.text*) } > rom
    .bss : { *(.bss*) } > ram
    .data : { *(.data*) } > ram
}