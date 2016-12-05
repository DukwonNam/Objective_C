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
    int food;
    float weight;
    
    @public
    int agePublic;
    @private
    int agePrivate;
    @protected
    int ageProtected;
    @package
    int agePackage;
}

-(void) running;
@end


#endif /* Animal_h */
