//
//  Car.m
//  leaningObjectiveC
//
//  Created by DukwonNam on 2016. 12. 14..
//  Copyright © 2016년 DukwonNam. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"

@implementation Engine

- (id)init {
    return [self initWithEngine:nil Size:0];
}

- (id)initWithEngine:(NSString *)name Size:(int)size {
    self = [super init];
    if (self != nil) {
        mName = name;
        mSize = size;
    }
    return self;
}

@synthesize size;

@end


@implementation Car

- (id)init {
    return [self initWithCar:nil Engine:nil];
}

- (id)initWithCar:(NSString *)name Engine:(Engine *)engine {
    self = [super init];
    if (self != nil) {
        mName = name;
        mEngine = engine;
    }
    return self;
}

- (void)printInfo {
    NSLog(@"%@(%dcc)\n", mName, mEngine.size);
}

@end
