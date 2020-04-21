//
//  Cylinder.m
//  InClassPractice
//
//  Created by alex on 16/4/20.
//  Copyright © 2020 alex. All rights reserved.
//

#import "Cylinder.h"

@implementation Cylinder

- (float)calculateVolume{
    return M_PI * [self radius] * [self radius] * [self height];
}

@end

