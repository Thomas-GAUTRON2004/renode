#define SIZE_OF_LINE 32
#define LINE_PER_SET 4

int __attribute__((section(".ma_section"))) tab[100][SIZE_OF_LINE];

int main()
{
    tab[0][0] = 1;
    tab[1*LINE_PER_SET][0] = 2;
    tab[2*LINE_PER_SET][0] = 3;
    tab[3*LINE_PER_SET][0] = 3;
    tab[1*LINE_PER_SET][0] = 3;
    tab[4*LINE_PER_SET][0] = 3;
    tab[5*LINE_PER_SET][0] = 3;
    tab[2*LINE_PER_SET][0] = 3;
    return 0;
}