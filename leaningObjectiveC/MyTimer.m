//
//  MyTimer.m
//  leaningObjectiveC
//
//  Created by dukwonnam on 2017. 2. 5..
//  Copyright © 2017년 korail. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyTimer.h"

@implementation MyTimer

- (void)initCount:(int)n {
    count = n;
}

- (int)countDown:(NSTimer *)timer {
    NSLog(@"%d", count);
    count--;
    
    if (count < 0) {
        [timer invalidate];
    }
    return count;
}

@end
