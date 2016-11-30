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
        // char * <=> NSString * Encoding
        const char *s1, *s2 = "EFGH가나다라";
        NSString *str1 = @"ABCD가나다라", *str2 = @"";

        NSLog(@"%@", str1);
        s1 = [str1 cStringUsingEncoding:NSShiftJISStringEncoding];
        printf("NSShiftJISStringEncoding: %s\n", s1);

        s1 = [str1 cStringUsingEncoding:NSUTF8StringEncoding];
        printf("NSUTF8StringEncoding: %s\n", s1);

        s1 = [str1 cStringUsingEncoding:NSASCIIStringEncoding];
        printf("NSASCIIStringEncoding: %s\n", s1);

        s1 = [str1 cStringUsingEncoding:NSUnicodeStringEncoding];
        printf("NSUnicodeStringEncoding: %s\n", s1);

        s1 = [str1 cStringUsingEncoding:NSMacOSRomanStringEncoding];
        printf("NSMacOSRomanStringEncoding: %s\n", s1);

        printf("%s\n", s2);
        str2 = [NSString stringWithCString:s2 encoding:NSUTF8StringEncoding];
        NSLog(@"NSUTF8StringEncoding: %@", str2);

        str2 = [NSString stringWithCString:s2 encoding:NSShiftJISStringEncoding];
        NSLog(@"NSShiftJISStringEncoding: %@", str2);

        str2 = [NSString stringWithCString:s2 encoding:NSASCIIStringEncoding];
        NSLog(@"NSASCIIStringEncoding: %@", str2);

        str2 = [NSString stringWithCString:s2 encoding:NSUnicodeStringEncoding];
        NSLog(@"NSUnicodeStringEncoding: %@", str2);

        str2 = [NSString stringWithCString:s2 encoding:NSMacOSRomanStringEncoding];
        NSLog(@"NSMacOSRomanStringEncoding: %@", str2);
    }

    @autoreleasepool {
        // NSMutableString
        NSMutableString *str = [NSMutableString stringWithCapacity:500];

        str = [NSMutableString stringWithString:@"ABCDEFG"];
        NSLog(@"NSMutableString stringWithString: %@", str);

        str = [NSMutableString stringWithString:@"가나다라마바사"];
        NSLog(@"NSMutableString stringWithString: %@", str);

        [str appendString:@"ABCDEFG"];
        NSLog(@"NSMutableString appendString: %@", str);

        // deleteCharactersInRange + NSMakeRange(start position, count of characters)
        [str deleteCharactersInRange:NSMakeRange(3, 2)];
        NSLog(@"NSMutableString deleteCharactersInRange: %@", str);

        // insertString + atIndex
        [str insertString:@"fkak" atIndex:3];
        NSLog(@"NSMutableString insertString: %@", str);
    }

    @autoreleasepool {
        // NSString[]
        NSString *str[] = {@"ABCD", @"가나다", @"defghij", @"ㄱㄴㄷㄹㅁㅂㅅㅇㅈㅊㅋㅌㅍㅎ"};
//        NSLog(@"NSString str[]=%@", str);

        // NSArray nil should be at last object
        NSArray *array = [NSArray arrayWithObject:@"ABCD"];
        NSLog(@"NSArray arrayWithObject=%@", array);

        array = [NSArray arrayWithObjects:@"ABCD", @"가나다", @"defghij", @"ㄱㄴㄷㄹㅁㅂㅅㅇㅈㅊㅋㅌㅍㅎ", nil];
        NSLog(@"NSArray arrayWithObjects=%@", array);

        array = [NSArray arrayWithObjects:@"ABCD", @"가나다", @"defghij", @"ㄱㄴㄷㄹㅁㅂㅅㅇㅈㅊㅋㅌㅍㅎ", @"abc", @"nil"];
        NSLog(@"NSArray arrayWithObjects(nil omitted)=%@", array);

        array = [NSArray arrayWithObjects:str count:3];
        NSLog(@"NSArray arrayWithObjects(with count)=%@", array);
    }

    @autoreleasepool {
        NSArray *a1 = [NSArray arrayWithObjects:@"ABC", @"DEF", @"GHI", nil];
        NSLog(@"NSArray arrayWithObjects=%@", a1);
        NSArray *a2 = [NSArray arrayWithArray:a1];
        NSLog(@"NSArray arrayWithArray=%@", a2);

        NSArray *a3 = [NSArray arrayWithObjects:@"가나다", @"라마바", nil];
        NSLog(@"NSArray arrayWithObjects=%@", a3);

        NSArray *b1 = [a1 arrayByAddingObjectsFromArray:a3];
        NSLog(@"NSArray a1 arrayByAddingObjectsFromArray a3=%@", b1);
        NSLog(@"NSArray arrayByAddingObjectsFromArray a1=%@", a1);
        b1 = [a3 arrayByAddingObjectsFromArray:a3];
        NSLog(@"NSArray a3 arrayByAddingObjectsFromArray a3=%@", b1);

        NSString *str = [b1 objectAtIndex:1];
        NSLog(@"NSArray b1 objectAtIndex 1=%@", str);

        NSInteger u = [b1 indexOfObject:@"DEF"];
        NSLog(@"NSArray b1 indexOfObject=%d", u);
        u = [b1 indexOfObject:str];
        NSLog(@"NSArray b1 indexOfObject=%d", u);
        int i = u;
        NSLog(@"int i = u NSInteger=%d", i);

        BOOL is = [b1 containsObject:@"DEF"];
        NSLog(@"NSArray b1 containsObject=%d", is);
        is = [b1 containsObject:str];
        NSLog(@"NSArray b1 containsObject=%d", is);

    }

    @autoreleasepool {
        // NSMutableArray
        NSMutableArray *m;
        m = [NSMutableArray arrayWithCapacity:5];
        NSLog(@"NSMutableArray arrayWithCapacity=%@", m);
        NSArray *a = [NSArray arrayWithObjects:@"ABC", @"가나다", @"DEF", nil];
        NSLog(@"NSArray arrayWithObjects=%@", a);

        [m addObjectsFromArray:a];
        NSLog(@"NSMutableArray addObjectsFromArray=%@", m);
        [m addObject:@"XYZ"];
        NSLog(@"NSMutableArray addObject=%@", m);
//        [m insertObject:@"qwe" atIndex:10];
        [m insertObject:@"qwe" atIndex:1];
        NSLog(@"NSMutableArray insertObject=%@", m);

        [m removeObject:@"ABC"];
        NSLog(@"NSMutableArray removeObject=%@", m);

        [m replaceObjectAtIndex:1 withObject:@"rty"];
        NSLog(@"NSMutableArray replaceObjectAtIndex=%@", m);

        [m exchangeObjectAtIndex:1 withObjectAtIndex:2];
        NSLog(@"NSMutableArray exchangeObjectAtIndex=%@", m);
    }

    system("PAUSE");
    return 0;
}
