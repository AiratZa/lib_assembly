#include "libasm.h"

void    test_ft_strlen()
{
	if (ft_strlen("Hello !") != 7)
        printf("Test failed -- ft_strlen - case #%d\n", 1);
	if (ft_strlen("1") != 1)
        printf("Test failed -- ft_strlen - case #%d\n", 2);
    if (ft_strlen("lorem\tipsum\tdolor\nsit\namet\n") != 27)
        printf("Test failed -- ft_strlen - case #%d\n", 3);
	if (ft_strlen("") != 0)
        printf("Test failed -- ft_strlen - case #%d\n", 4);
	if (ft_strlen("\n\n\f\r\t") != 5)
        printf("Test failed -- ft_strlen - case #%d\n", 5);
	if (ft_strlen("   ") != 3)
        printf("Eror occured when test ft_strlen - case #%d\n", 6);
}


void	test_ft_strcmp()
{
    char *str1 = "salut";
    char *str2 = "salut";

    if (ft_strcmp(str1, str2) != 0)
        printf("Test failed -- ft_strcmp - case #%d\n", 1);
    str1 = "test";
    str2 = "testss";
    if (ft_strcmp(str1, str2) != -115)
        printf("Test failed -- ft_strcmp - case #%d\n", 2);
    str1 = "testss";
    str2 = "test";
    if (ft_strcmp("testss", "test") != 115)
        printf("Test failed -- ft_strcmp - case #%d\n", 3);
    str1 = "test";
    str2 = "tEst";
    if (ft_strcmp("test", "tEst") != 32)
        printf("Test failed -- ft_strcmp - case #%d\n", 4);
    str1 = "";
    str2 = "test";
    if (ft_strcmp("", "test") != -116)
        printf("Test failed -- ft_strcmp - case #%d\n", 5);
    str1 = "test";
    str2 = "";
    if (ft_strcmp("test", "") != 116)
        printf("Test failed -- ft_strcmp - case #%d\n", 6);
    str1 = "test\200";
    str2 = "test\0";
    if (ft_strcmp("test\200", "test\0") != 128)
        printf("Test failed -- ft_strcmp - case #%d\n", 7);
}

void    test_ft_strcpy(char *orig)
{
    char	*dest;

	if (!(dest = (char *)malloc(sizeof(*dest) * (strlen(orig) + 1))))
    {
        printf("Malloc in ft_strcpy test failed :( Please retry\n");
        return ;
    }
    memset(dest, 0, (strlen(orig) + 1));
    dest = ft_strcpy(dest, orig);
    if (strcmp(dest, orig))
        printf("Test failed -- ft_strcpy\n");
	free(dest);
}

void    test_ft_read_n_write(int len)
{
    char *str;
    // ssize_t ret;

    str = NULL;
	if (!(str = (char *)malloc(sizeof(char) * len)))
    {
        printf("Malloc in ft_read test failed :( Please retry\n");
        return ;
    }
    memset(str, 0, len);
    ft_read(0, str, 10);//
    // ret = ft_read(0, str, len);
    // printf("RET %zd\n", ret);
    // if (ret != len)
    //     printf("Test failed -- ft_read\n");
    write(1, str, len);
}

int main(void)
{
    test_ft_strlen();
    test_ft_strcmp();
    test_ft_strcpy("Hello");
    test_ft_read_n_write(10);
	return (0);
}