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
    
    @autoreleasepool {
        Animal *animal = [[Animal alloc] init];
        //        NSLog(@"main animal->agePrivate=%d", animal->agePrivate);
        //        NSLog(@"main animal->ageProtected=%d", animal->ageProtected);
        NSLog(@"main animal->agePublic=%d", animal->agePublic);
        NSLog(@"main animal->agePackage=%d", animal->agePackage);
    }
//    test_Animal_classes();
    test_NSObjects();
//    test_Breakfast_classes();
//    test_TestClass_classes();
//    test_Car_classes();
//    test_Fish_classes();
//    test_Fruit_classes();

//    test_File_IO();

    system("PAUSE");
    return 0;
}
