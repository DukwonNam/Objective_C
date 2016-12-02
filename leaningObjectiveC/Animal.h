//
//  Animal.h
//  leaningObjectiveC
//
//  Created by DukwonNam on 2016. 12. 2..
//  Copyright © 2016년 DukwonNam. All rights reserved.
//

#ifndef Animal_h
#define Animal_h

@interface Animal:NSObject {
    @public
    int age;
    int food;
    float weight;
}

-(void) run;
@end


#endif /* Animal_h */
