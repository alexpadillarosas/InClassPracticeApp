//
//  Circle.h
//  InClassPractice
//
//  Created by alex on 16/4/20.
//  Copyright © 2020 alex. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Circle : NSObject

@property float radius;
/*
 @property will generate the following accessor / mutator:
    -(int) radius {
        return _radius;
    }
 
    -(void) setRadius:(float)newRadius{
        _radius = newRadius;
    }
 */

-(float) calculateDiameter;
-(float) calculateCircumference;
-(float) calculateArea;

@end

NS_ASSUME_NONNULL_END

