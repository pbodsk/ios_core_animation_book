//
//  ICAInitialViewController.m
//  Template
//
//  Created by Peter Bødskov on 19/01/14.
//  Copyright (c) 2014 Peter Bødskov. All rights reserved.
//

#import "ICAInitialViewController.h"

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
    self.imageView1.layer.shadowOpacity = 0.5f;
    self.imageView2.layer.shadowOpacity = 0.5f;
    
    CGMutablePathRef squarePath = CGPathCreateMutable();
    CGPathAddRect(squarePath, NULL, self.imageView1.bounds);
    self.imageView1.layer.shadowPath = squarePath;
    CGPathRelease(squarePath);
    
    CGMutablePathRef circlePath = CGPathCreateMutable();
    CGPathAddEllipseInRect(circlePath, NULL, self.imageView2.bounds);
    self.imageView2.layer.shadowPath = circlePath;
    CGPathRelease(circlePath);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
