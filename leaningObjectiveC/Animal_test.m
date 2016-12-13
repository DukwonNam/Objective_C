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
        Animal *animal2 = [Animal alloc];
        animal.running;
        [animal running];
//        NSLog(@"test_Animal_classes animal->agePrivate=%d", animal->agePrivate);
//        NSLog(@"test_Animal_classes animal->ageProtected=%d", animal->ageProtected);
        NSLog(@"test_Animal_classes animal->agePublic=%d", animal->agePublic);
        NSLog(@"test_Animal_classes animal->agePackage=%d", animal->agePackage);
        NSLog(@"test_Animal_classes [animal getAgePrivate]=%d", [animal getAgePrivate]);
        NSLog(@"test_Animal_classes [animal2 getAgePrivate]=%d", [animal2 getAgePrivate]);
        NSLog(@"test_Animal_classes [animal feed:200]=%d", [animal feed:200]);
        NSLog(@"test_Animal_classes [animal feed:200]=%d", [animal feed:200]);
        NSLog(@"test_Animal_classes [animal feedAndExercise:300 :400]=%f", [animal feedAndExercise:300 :400]);
        NSLog(@"test_Animal_classes [animal feedAndExercise2:300 exercise:400]=%f", [animal feedAndExercise2:300 exercise:400]);

        id thing = [Animal alloc];
        [thing running];
    }

    return 1;
}
