#import <Foundation/Foundation.h>

int test_NSObjects() {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

    {
        NSString *str;
        str = [NSString alloc];
        str = [str init];

        int n = [str length];
        NSLog(@"The string is %@", str);
        NSLog(@"The length of the string is %d.", n);
    
        str = @"Hello world";
        int m = [str length];

        NSLog(@"The string is %@", str);
        NSLog(@"The length of the string is %d.", m);
    }

    {
        char s[] = "ABCDE";
        NSString *str = @"Objective-C";

        printf("printf [%s]\n", s);
        printf("printf [%s]\n", str);
        printf("printf [%@]\n", str);

        NSLog(@"NSLog [%s]", s);
        NSLog(@"NSLog [%s]", str);
    }
    {
        int a = 7;
        BOOL b;
        if (a <= 10) {
            b = YES;
        } else {
            b = NO;
        }
        NSLog(@"%d", b);
        NSLog(@"%d", YES);
        NSLog(@"%d", NO);
    }
    {
        // NSString length
        NSString *s = @"ABC";
        NSLog(@"ABC's length is %d", [s length]);

        // NSString initWithFormat
        NSString *s2 = [[NSString alloc] initWithFormat:@"%@ %s", @"123", "321"];
        NSLog(@"NSString s2 is now %@", s2);

        // NSString stringByAppendingString
        NSString *s3 = [s stringByAppendingString:@"DEF"];
        NSLog(@"NSString s is now %@", s);
        NSLog(@"NSString s3 is now %@", s3);

        // NSString isEqualToString
        NSLog(@"comparing s and s3 is %d", [s isEqualToString:s3]);
        NSLog(@"comparing s and ABC is %d", [s isEqualToString:@"ABC"]);
    }

    {
        NSString *str = @"01234567890";
        // NSString substringToIndex
        NSLog(@"str substringToIndex 4 is %@", [str substringToIndex:4]);

        // NSString substringFromIndex
        NSLog(@"str substringFromIndex 4 is %@", [str substringFromIndex:4]);
        
        // NSString substringWithRange:NSMakeRange()
        NSLog(@"str substringWithRange:NSMakeRange(4, 8) is %@", [str substringWithRange:NSMakeRange(4, 8)]);
    }

    {
        // NSString initWithCString: encoding
        char ch[] = "ABCDE";
        //NSString *strTest = [[NSString alloc] initWithCString:ch encoding:NSUTF8StringEncoding];
        //NSLog(@"strTest alloc + initWithCString is %@", strTest);
        //NSString *strTest2 = [NSString initWithCString:ch encoding:NSUTF8StringEncoding];
        //NSLog(@"strTest2 initWithCString is %@", strTest2);
    }

    [pool release];
    system("PAUSE");
    return 0;
}
