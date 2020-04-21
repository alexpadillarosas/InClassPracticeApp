//
//  Cylinder.h
//  InClassPractice
//
//  Created by alex on 16/4/20.
//  Copyright © 2020 alex. All rights reserved.
//

#import "Circle.h"

NS_ASSUME_NONNULL_BEGIN

@interface Cylinder : Circle

@property float height;

-(float) calculateVolume;

@end

NS_ASSUME_NONNULL_END
