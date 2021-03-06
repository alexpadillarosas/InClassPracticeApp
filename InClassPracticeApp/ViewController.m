//
//  ViewController.m
//  InClassPracticeApp
//
//  Created by alex on 19/4/20.
//  Copyright © 2020 alex. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setCircle:[[Circle alloc]init]];
    
    [self setCylinder: [[Cylinder alloc] init]];
    
    [[self btnCalcVolume] setEnabled:NO];
    
    /*
     ============== Important ==============
     this is for the UITextField: hide keyboard by touching somewhere else using gestures, also create the dismisskeyboard method
     */
    UITapGestureRecognizer *gestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissKeyboard)];
    [self.view addGestureRecognizer:gestureRecognizer];
    gestureRecognizer.cancelsTouchesInView = NO;
    
}

- (void)dismissKeyboard
{
     [self.view endEditing:YES];
}


/*
 To create the action proceed in the same way as the outlets ctrl-click  and drag it here
 */
- (IBAction)calculateCircleMeasures:(id)sender {
    //here we will be using plain getters / setters auto-generated by @property
    float radius =  [[[self tfRadius] text] floatValue];
    //use getter too get the local circle previously created
    Circle* myCircle = [self circle];
    [myCircle setRadius:radius];
    
    if(radius > 0){
        //enable Show Cylinder Detail button
        [[self btnCalcVolume] setEnabled:YES];
        
        //calculate measurments
        float area = [myCircle calculateArea];
        float diameter = [myCircle calculateDiameter];
        float circumference = [myCircle calculateCircumference];
        //
        [[self lblDiameter] setText:[NSString stringWithFormat:@"%f", diameter]];
        [[self lblArea] setText:[NSString stringWithFormat:@"%f", area]];
        [[self lblCircumference] setText:[NSString stringWithFormat:@"%f", circumference]];
        
    }
    
}
- (IBAction)calculateCylinderMeasures:(id)sender {
    
    [[self cylinder] setRadius:[[[self tfRadius] text] floatValue]];
    [[self cylinder] setHeight:[[ [self tfHeight] text] floatValue]];
    
    //here we use the getter inside Cylinder class
    if([[self cylinder] height] > 0){
        [[self lblVolume] setText:[NSString stringWithFormat:@"%f", [[self cylinder] calculateVolume]]];
    }
}



@end
