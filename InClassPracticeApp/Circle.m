//
//  Circle.m
//  InClassPractice
//
//  Created by alex on 16/4/20.
//  Copyright © 2020 alex. All rights reserved.
//

#import "Circle.h"

@implementation Circle

- (float)calculateDiameter{
    return 2 * [self radius];
}

- (float)calculateCircumference{
    return 2 * M_PI * [self radius];
}

- (float)calculateArea{
    return M_PI * [self radius] * [self radius];
}


@end

