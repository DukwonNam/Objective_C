//
//  MyTimer_test.m
//  leaningObjectiveC
//
//  Created by dukwonnam on 2017. 2. 5..
//  Copyright © 2017년 korail. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyTimer.h"

void test_MyTimer() {
    @autoreleasepool {
        id timer = [[MyTimer alloc] init];
        [timer initCount:30];
        
        [NSTimer scheduledTimerWithTimeInterval:1.0 target:timer selector:@selector(countDown:) userInfo:nil repeats:YES];
        
        NSRunLoop *loop = [NSRunLoop currentRunLoop];
        [loop runUntilDate:[NSDate dateWithTimeIntervalSinceNow:60]];
    }
}
