//
//  TestClass.m
//  leaningObjectiveC
//
//  Created by DukwonNam on 2016. 12. 13..
//  Copyright © 2016년 DukwonNam. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TestClass : NSObject {
    int num1;
    int num2;
    int num3;
    int num4;
    id num5;
    id num6;
    id num7;
//    id _num8;
}

@property (readwrite) int num1;
@property (readonly) int num2;
@property (nonatomic) int num3;
@property (assign) int num4;
@property (copy) id num5;
@property (retain) id num6;
@property (strong) id num7;
//@property (weak) id _num8;

@end


@implementation TestClass

@synthesize num1;
@synthesize num2;
@synthesize num3;
@synthesize num4;
@synthesize num5;
@synthesize num6;
@synthesize num7;
//@synthesize _num8;

@end

void test_TestClass_classes() {
    @autoreleasepool {
        TestClass *a = [[TestClass alloc] init];
        a.num1 = 1;
//        a.num2 = 2;
        a.num3 = 3;
        a.num4 = 4;
//        a.num5 = 5;
//        a.num6 = 6;
//        a.num7 = 7;
//        a.num8 = 8;

        NSLog(@"a.num1=%d", a.num1);
        NSLog(@"a.num2=%d", a.num2);
        NSLog(@"a.num3=%d", a.num3);
        NSLog(@"a.num4=%d", a.num4);
        NSLog(@"a.num5=%@", a.num5);
        NSLog(@"a.num6=%@", a.num6);
        NSLog(@"a.num7=%@", a.num7);
//        NSLog(@"a.num8=%@", a._num8);
    }
}

