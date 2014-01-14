//
//  ICAViewController.m
//  Layers
//
//  Created by Peter Bødskov on 14/01/14.
//  Copyright (c) 2014 Peter Bødskov. All rights reserved.
//

#import "ICAViewController.h"
@import QuartzCore;

@interface ICAViewController ()

@end

@implementation ICAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIView *layerView = [[UIView alloc]initWithFrame:CGRectMake(60.0f, 100.0f, 200.0f, 200.0f)];
    layerView.backgroundColor = [UIColor whiteColor];
    
    CALayer *blueLayer = [CALayer layer];
    blueLayer.frame = CGRectMake(50.0f, 50.0f, 100.0f, 100.0f);
    blueLayer.backgroundColor = [UIColor blueColor].CGColor;
    [layerView.layer addSublayer:blueLayer];
    
    [self.view addSubview:layerView];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
