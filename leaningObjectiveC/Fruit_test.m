//
//  Fruit_test.m
//  leaningObjectiveC
//
//  Created by dukwonnam on 2017. 1. 2..
//  Copyright © 2017년 korail. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fruit.h"

void test_Fruit_classes() {
    @autoreleasepool {
        Fruit *fruit = [[Fruit alloc] init];
        fruit.showBrand;
        int b = [fruit conformsToProtocol:@protocol(FruitInfo)];
        NSLog(@"fruit conformsToProtocol:@protocol(FruitInfo) = %d", b);
        
        b = [fruit isMemberOfClass:[Fruit class]];
        NSLog(@"fruit isMemberOfClass:[Fruit class] = %d", b);
        
        b = [fruit isMemberOfClass:[NSObject class]];
        NSLog(@"fruit isMemberOfClass:[NSObject class] = %d", b);
        
        b = [fruit isKindOfClass:[NSObject class]];
        NSLog(@"fruit isKindOfClass:[NSObject class] = %d", b);
    }
}
