#import <string.h>
#import <stdlib.h>
#import <memory.h>
#import <malloc.h>
#import <Foundation/Foundation.h>
#import <Foundation/NSAutoreleasePool.h>

int test_C_fundamentals() {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    NSLog(@"Hello, World!\n");

    /*******************************************************
        strlen(char * src)
        Get length of string
        This needs string.h
    */
    {
        printf("\n\n# strlen(char * src)\n");
        char s[15] = "ABC";
        int l = strlen(s);
        printf("string s=%s and length is %d\n", s, l);
        // Result: string s=ABC and length is 3
    }


    /*******************************************************
        strcpy(char * target, char * src)
        Copy strings from the src to target
        This needs string.h
    */
    {
        printf("\n\n# strcpy(char * target, char * src)\n");
        char s2[3];
        strcpy(s2, "Hello world! This is a test text");
        int l = strlen(s2);
        printf("string s2=%s and length is %d\n", s2, l);
        // Result: string s2=Hello w  and length is 32
    }


    /*******************************************************
        strcat(char * target, char * src)
        Paste string from the src at the end of the target
        This needs string.h
    */
    {
        printf("\n\n# strcat(char * target, char * src)\n");
        char a[3] = "XYZ";
        char b[] = "de";
        int l = strlen(a);
        printf("string a=%s and length is %d\n", a, l);
        // Result: string a=XYZHello world! This  and length is 22
    
        strcat(a, b);
        l = strlen(a);
        printf("string a=%s and length is %d\n", a, l);
        // Result: string a=XYZHello world! This  and length is 24
    }


    /*******************************************************
        strcmp(char * a, char * b)
        Compare string a and b
        If result == 0 : same
        If result < 0 : a is faster than b lexically
        If result > 0 : b is faster than a lexically
        This needs string.h
    */
    {
        printf("\n\n# strcmp(char * a, char * b)\n");
        char src1[2] = "ABC";
        char src2[2] = "ABCD";
        int c = strcmp(src1, src2);
        printf("string src1=%s and src2=%s compare result length is %d\n", src1, src2, c);
        // Result: string src1=ABde and src2=ABABde compare result length is 1
    }

    /*******************************************************
        atoi(char * src)
        Convert string to int
        This needs stdlib.h
    */
    {
        printf("\n\n# atoi(char * src)\n");
        char str[] = "340";
        int i = atoi(str);
        printf("string str=%s atoi %d\n", str, i);
    }
    
    /*******************************************************
        sprintf(char * target, "%f", 14.5);
        Convert real number to string
        It's like itoa() but itoa() is defined in Visual studio.
        This needs string.h
    */
    {
        printf("\n\n# sprintf(char * target, \"\%f\", 14.5)\n");
        char str[5];
        sprintf(str, "value: %f", 143.5);
        printf("sprintf to string str=%s\n", str);
        // Result: sprintf to string str=value: 143.500000

        sprintf(str, "%.2f", 143.5);
        printf("sprintf to string str=%s\n", str);
        // Result: sprintf to string str=143.50

        sprintf(str, "%d", 143.5);
        printf("sprintf to string str=%s\n", str);
        // Result: sprintf to string str=0

        sprintf(str, "%h", 143.5);
        printf("sprintf to string str=%s\n", str);
        // Result: sprintf to string str=

        sprintf(str, "%b", 143.5);
        printf("sprintf to string str=%s\n", str);
        // Result: sprintf to string str=b

        sprintf(str, "%x", 143.5);
        printf("sprintf to string str=%s\n", str);
        // Result: sprintf to string str=0

        sprintf(str, "%e", 143.5);
        printf("sprintf to string str=%s\n", str);
        // Result: sprintf to string str=1.435000e+002
    }
    
    {
        int x, y;
        int a[][3] = {{10, 20, 30},{40, 50, 60}};
        for (y = 0; y < 2; y++) {
            for (x = 0; x < 3; x++) {
                printf("a[%d][%d]=%d ", y, x, a[y][x]);
            }
            printf("\n");
        }
    }

    {
        char str[] = "Infinite Test!";
        printf("str=%c\n", *(str + 2));
    }

    /*******************************************************
        T * name = (T *)malloc(sizeof(T) * size)
        This needs memory.h, malloc.h, stdlib.h
    */
    {
        char *buf;
        buf = (char *)malloc(sizeof(char) * 2000);
        buf[0] = 'z';
        buf[1] = 'y';
        buf[2] = 'x';
        buf[3] = NULL;

        printf("buf=%s\n", buf);
        
        free(buf);
    }

    /*******************************************************
        searching for a charactor
    */
    {
        printf("\n\n# searching for a charactor\n");
        char src[] = "I love car and dog.";
        char key = 'a';
        char *p = src;
        int cnt = 0;
        int i = 0;
        for (i = 0; *p != NULL; i++) {
            if (*p == key) {
                printf("%c found in %d position\n", key, i);
                cnt++;
            }
            p++;
        }
    }

    system("PAUSE");
    return 0;
}
