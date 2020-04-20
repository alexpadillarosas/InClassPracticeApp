//
//  ViewController.h
//  InClassPracticeApp
//
//  Created by alex on 19/4/20.
//  Copyright © 2020 alex. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Circle.h"
#import "Cylinder.h"

@interface ViewController : UIViewController
/*
    First create the UI, place all the components
    Create this outlets by ctrl-click and drag it here, it will automatically create the outlets
 */
@property (weak, nonatomic) IBOutlet UITextField *tfRadius;
@property (weak, nonatomic) IBOutlet UILabel *lblDiameter;
@property (weak, nonatomic) IBOutlet UILabel *lblCircumference;
@property (weak, nonatomic) IBOutlet UILabel *lblArea;

@property (weak, nonatomic) IBOutlet UITextField *tfHeight;
@property (weak, nonatomic) IBOutlet UILabel *lblVolume;

@property (weak, nonatomic) IBOutlet UIButton *btnCalcDetails;
@property (weak, nonatomic) IBOutlet UIButton *btnCalcVolume;

//These 2 properties are needed due to the fact that the business logic is implemented in there
@property Circle* circle;
@property Cylinder* cylinder;

@end

