//
//  ViewController.h
//  Lab05
//
//  Created by felipe on 04/02/15.
//  Copyright (c) 2015 felipe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Home : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *lblColor;

@property (strong, nonatomic) IBOutlet UILabel *lblRojo;
@property (strong, nonatomic) IBOutlet UILabel *lblVerde;
@property (strong, nonatomic) IBOutlet UILabel *lblAzul;
@property (strong, nonatomic) IBOutlet UILabel *lblBlink;
@property (strong, nonatomic) IBOutlet UISlider *slideRojo;
@property (strong, nonatomic) IBOutlet UISlider *slideVerde;
@property (strong, nonatomic) IBOutlet UISlider *slideAzul;
@property (strong, nonatomic) IBOutlet UISlider *slideBlink;

- (IBAction)slideRojoChanged:(id)sender;
- (IBAction)slideVerdeChangeg:(id)sender;
- (IBAction)slideAzulChanged:(id)sender;
- (IBAction)slideBlinkChanged:(id)sender;

@end

