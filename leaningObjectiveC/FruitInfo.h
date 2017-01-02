//
//  FruitInfo.h
//  leaningObjectiveC
//
//  Created by dukwonnam on 2017. 1. 2..
//  Copyright © 2017년 korail. All rights reserved.
//

#ifndef FruitInfo_h
#define FruitInfo_h

@protocol FruitInfo <NSObject>

@required
- (void)showBrand;

@optional
- (void)showCalorie;

@end

#endif /* FruitInfo_h */
