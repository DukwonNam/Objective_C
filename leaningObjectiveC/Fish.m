//
//  Fish.m
//  leaningObjectiveC
//
//  Created by DukwonNam on 2016. 12. 16..
//  Copyright © 2016년 DukwonNam. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fish.h"

@implementation Fish

- (void)swin:(int)kind :(int)color {
    NSLog(@"Swim %d %d", kind, color);
}

@synthesize mSize;

@end
