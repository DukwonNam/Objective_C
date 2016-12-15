//
//  Car.h
//  leaningObjectiveC
//
//  Created by DukwonNam on 2016. 12. 14..
//  Copyright © 2016년 DukwonNam. All rights reserved.
//

#ifndef Car_h
#define Car_h

@interface Engine : NSObject {
    NSString *mName;
    int mSize;
}

- (id)init;
- (id)initWithEngine:(NSString *)name Size:(int)size;

@property(readwrite) int mSize;

@end


@interface Car : NSObject {
    NSString *mName;
    Engine *mEngine;
}

- (id)init;
- (id)initWithCar:(NSString *)name Engine:(Engine *)engine;
- (void)printInfo;

@end


#endif /* Car_h */
