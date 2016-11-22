#import <Foundation/Foundation.h>

int test_NSObjects() {

    @autoreleasepool {
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

    @autoreleasepool {
        char s[] = "ABCDE";
        NSString *str = @"Objective-C";

        printf("printf [%s]\n", s);
        printf("printf [%s]\n", str);
        printf("printf [%@]\n", str);

        NSLog(@"NSLog [%s]", s);
        NSLog(@"NSLog [%s]", str);
    }
    @autoreleasepool {
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
    @autoreleasepool {
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

    @autoreleasepool {
        NSString *str = @"01234567890";
        // NSString substringToIndex
        NSLog(@"str substringToIndex 4 is %@", [str substringToIndex:4]);

        // NSString substringFromIndex
        NSLog(@"str substringFromIndex 4 is %@", [str substringFromIndex:4]);
        
        // NSString substringWithRange:NSMakeRange()
        NSLog(@"str substringWithRange:NSMakeRange(4, 8) is %@", [str substringWithRange:NSMakeRange(1, 4)]);
    }

    @autoreleasepool {
        // NSString initWithCString: encoding
        char ch[] = "ABCDE";
        NSString *strTest = [[NSString alloc] initWithCString:ch encoding:NSUTF8StringEncoding];
        NSLog(@"strTest alloc + initWithCString is %@", strTest);
        // NSString stringWithCString: encoding
        NSString *strTest2 = [NSString stringWithCString:ch encoding:NSUTF8StringEncoding];
//        NSString *strTest2 = [NSString stringWithUTF8String:ch];
        NSLog(@"strTest2 stringWithCString is %@", strTest2);
    }

    @autoreleasepool {
        const char *s1, *s2 = "EFGH";
        NSString *str1 = @"ABCD", *str2 = @"";
        s1 = [str1 cStringUsingEncoding:NSShiftJISStringEncoding];
    }

    system("PAUSE");
    return 0;
}
