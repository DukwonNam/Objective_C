//
//  MyTimer.h
//  leaningObjectiveC
//
//  Created by dukwonnam on 2017. 2. 5..
//  Copyright © 2017년 korail. All rights reserved.
//

#ifndef MyTimer_h
#define MyTimer_h

#import <Foundation/Foundation.h>

@interface MyTimer : NSObject {
    int count;
}

- (void)initCount:(int)n;

- (int)countDown:(NSTimer*)timer;

@end


#endif /* MyTimer_h */
