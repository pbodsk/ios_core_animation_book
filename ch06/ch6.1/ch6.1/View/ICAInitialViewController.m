//
//  ICAInitialViewController.m
//  Template
//
//  Created by Peter Bødskov on 19/01/14.
//  Copyright (c) 2014 Peter Bødskov. All rights reserved.
//

#import "ICAInitialViewController.h"

#define RADIANS_TO_DEGREES(x) ((x)/M_PI*180.0) 
#define DEGREES_TO_RADIANS(x) ((x)/180.0*M_PI)

@interface ICAInitialViewController ()

@end

@implementation ICAInitialViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Initial View Controller";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
    gradientLayer.frame = self.containerView.bounds;
    gradientLayer.colors = @[(__bridge id)[UIColor greenColor].CGColor, (__bridge id)[UIColor redColor].CGColor];
    gradientLayer.startPoint = CGPointMake(0.0, 0.0);
    gradientLayer.endPoint = CGPointMake(1.0, 0.0);
    [self.containerView.layer addSublayer:gradientLayer];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
