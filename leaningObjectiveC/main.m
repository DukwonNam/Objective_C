//
//  main.m
//  leaningObjectiveC
//
//  Created by DukwonNam on 2016. 11..
//  Copyright © 2016 year DukwonNam. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "Animal.h"

int main(int argc, const char * argv[]) {
//    test_C_fundamentals();
//    calculateCalories();
//    test_NSObjects();
//    test_Animal_classes();
    test_Breakfast_classes();

    @autoreleasepool {
        Animal *animal = [[Animal alloc] init];
//        NSLog(@"main animal->agePrivate=%d", animal->agePrivate);
//        NSLog(@"main animal->ageProtected=%d", animal->ageProtected);
        NSLog(@"main animal->agePublic=%d", animal->agePublic);
        NSLog(@"main animal->agePackage=%d", animal->agePackage);
    }

    system("PAUSE");
    return 0;
}
