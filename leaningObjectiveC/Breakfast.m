//
//  Breakfast.m
//  leaningObjectiveC
//
//  Created by korail on 2016. 12. 9..
//  Copyright © 2016년 korail. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Breakfast.h"

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

@end
