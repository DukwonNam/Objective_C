//
//  Lunch.m
//  leaningObjectiveC
//
//  Created by DukwonNam on 2016. 12. 12..
//  Copyright © 2016년 DukwonNam. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Lunch.h"

@implementation Lunch

+(int)lunchTime:(int)breakfastTime {
    return breakfastTime + 5;
}

-(int)addBreadNum:(int)num1 addWith:(int)num2 {
    return num1 + num2;
}

@end
