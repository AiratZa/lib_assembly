#include "libasm.h"

int main(void)
{
    char c;

    c = 0;
    printf("%ld FT_STRLEN\n", ft_strlen("Hello"));
    ft_read(1, &c, 1);
    printf("%c\n", c);
    return (0);
}