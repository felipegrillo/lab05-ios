//
//  ViewController.m
//  Lab05
//
//  Created by felipe on 04/02/15.
//  Copyright (c) 2015 felipe. All rights reserved.
//

#import "Home.h"
NSTimer *tiempo;
@interface Home ()

@end

@implementation Home

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)blink{
    if (self.lblColor.alpha==1) {
        self.lblColor.alpha=0;
    }else{
    self.lblColor.alpha=0;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) updateColor{
    self.lblColor.backgroundColor=[UIColor colorWithRed:self.slideRojo.value/255 green:self.slideVerde.value/255 blue:self.slideAzul.value/255 alpha:1];
}

- (IBAction)slideRojoChanged:(id)sender {
    self.lblRojo.text=[NSString stringWithFormat:@"Rojo:%d",(int)self.slideRojo.value];
    [self updateColor];
    
}

- (IBAction)slideVerdeChangeg:(id)sender {
    self.lblVerde.text=[NSString stringWithFormat:@"Verde:%d",(int)self.slideVerde.value];
    [self updateColor];
}

- (IBAction)slideAzulChanged:(id)sender {
    self.lblAzul.text=[NSString stringWithFormat:@"Verde:%d",(int)self.slideAzul.value];
    [self updateColor];
}

- (IBAction)slideBlinkChanged:(id)sender {
    [tiempo invalidate];
    if (self.slideBlink.value==0) {
        self.lblColor.alpha=1;
    }else{
        tiempo=[NSTimer scheduledTimerWithTimeInterval:self.slideBlink.value target:self selector:@selector(blink) userInfo:nil repeats:YES];
        self.lblBlink.text=[NSString stringWithFormat:@"Blink:%d",(int)self.slideBlink.value];
    
    }
   
    
}
@end
