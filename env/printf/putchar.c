void _putchar(char character)
{
    asm ("lui	t0,0x2000");
    asm ("sb	a0,0(t0)");
}