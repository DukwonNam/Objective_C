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
    @autoreleasepool {
        Animal *animal = [[Animal alloc] init];
        animal.running;
        [animal running];
//        NSLog(@"test_Animal_classes animal->agePrivate=%d", animal->agePrivate);
//        NSLog(@"test_Animal_classes animal->ageProtected=%d", animal->ageProtected);
        NSLog(@"test_Animal_classes animal->agePublic=%d", animal->agePublic);
        NSLog(@"test_Animal_classes animal->agePackage=%d", animal->agePackage);

        id thing = [Animal alloc];
        [thing running];
    }

    return 1;
}
