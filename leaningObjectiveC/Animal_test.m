//
//  Animal_test.m
//  leaningObjectiveC
//
//  Created by korail on 2016. 12. 2..
//  Copyright © 2016년 korail. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Animal.h"

int test_Animal_classes() {
    Animal *animal = [Animal alloc];
    animal.run;
    [animal run];

    id thing = [Animal alloc];
    [thing run];

    return 1;
}
