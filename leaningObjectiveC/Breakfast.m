//
//  Breakfast.m
//  leaningObjectiveC
//
//  Created by korail on 2016. 12. 9..
//  Copyright © 2016년 korail. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Breakfast.h"
#import "Lunch.h"

@implementation Breakfast

-(void) eatButteredBread {
    NSLog(@"Buttered");
//    self.eatBread;
//    self->eatBread;
    [self eatBread];
}

-(void) eatBread {
    NSLog(@"eatBread");
}

-(void) showTotalBreadNum {
    id lunch = [[Lunch alloc] init];
    int n = [lunch addBreadNum:5 addWith:4];
    NSLog(@"showTotalBreadNum = %d", n);
}

@end
