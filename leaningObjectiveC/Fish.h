//
//  Fish.h
//  leaningObjectiveC
//
//  Created by DukwonNam on 2016. 12. 16..
//  Copyright © 2016년 DukwonNam. All rights reserved.
//

#ifndef Fish_h
#define Fish_h

@interface Fish:NSObject {
    int mSize;
}

@property int mSize;

- (void)swin:(int)kind :(int)color;

@end


#endif /* Fish_h */
