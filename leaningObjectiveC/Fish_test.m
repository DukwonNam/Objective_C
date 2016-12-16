//
//  Fish_test.m
//  leaningObjectiveC
//
//  Created by DukwonNam on 2016. 12. 16..
//  Copyright © 2016년 DukwonNam. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fish.h"

void test_Fish_classes() {
    @autoreleasepool {
        Fish *guppy = [[Fish alloc] init];
        Fish *goldfish = [[Fish alloc] init];
        [guppy swin:4 :5];
        [goldfish swin:2 :3];
    }
}
