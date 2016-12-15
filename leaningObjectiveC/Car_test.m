//
//  Car_test.m
//  leaningObjectiveC
//
//  Created by DukwonNam on 2016. 12. 15..
//  Copyright © 2016년 DukwonNam. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"

void test_Car_classes() {
    int i;
    @autoreleasepool {
        // Make engines
        Engine *cbz = [[Engine alloc] initWithEngine:@"CBZ" Size:1197];
        Engine *cav = [[Engine alloc] initWithEngine:@"CAV" Size:1389];
        Engine *cdl = [[Engine alloc] initWithEngine:@"CDL" Size:1984];

        // Make Cars
        NSArray *carArray = [[NSArray alloc] initWithObjects:[Car alloc], [Car alloc], [Car alloc], [Car alloc], nil];
        [[carArray objectAtIndex:0] initWithCar:@"THE BEETLE" Engine:cbz];
        [[carArray objectAtIndex:1] initWithCar:@"POLO TSI" Engine:cbz];
        [[carArray objectAtIndex:2] initWithCar:@"POLO GTI" Engine:cav];
        [[carArray objectAtIndex:3] initWithCar:@"GOLF R" Engine:cdl];

        for (i = 0; i < [carArray count]; i++) {
            [[carArray objectAtIndex:i] printInfo];
        }
    }
}
