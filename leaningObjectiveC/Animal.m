//
//  Animal.m
//  leaningObjectiveC
//
//  Created by DukwonNam on 2016. 12. 2..
//  Copyright © 2016년 DukwonNam. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Animal.h"

@implementation Animal

-(void) running {
    NSLog(@"running");
}
-(int) getAgePrivate {
    return agePrivate;
}
-(int) feed:(int)food {
    self->food += food;
    return self->food;
}
-(float) feedAndExercise:(int)food :(int)exerciseTime {
    self->food += food;
    weight = self->food - exerciseTime;
    return weight;
}
-(float) feedAndExercise2:(int)food exercise:(int)exerciseTime {
    self->food += food;
    weight = self->food - exerciseTime;
    return weight;
}

@end

