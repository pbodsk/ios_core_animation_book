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
    self.leftOuterView.layer.cornerRadius = 20.0f;
    self.leftOuterView.layer.borderWidth = 2.0f;
    
    self.rightOuterView.layer.cornerRadius = 20.0f;
    self.rightOuterView.layer.borderWidth = 2.0f;

    self.leftOuterView.layer.shadowColor = [UIColor blackColor].CGColor;
    self.leftOuterView.layer.shadowRadius = 10.0f;
    self.leftOuterView.layer.shadowOffset = CGSizeMake(-2, -20);
    self.leftOuterView.layer.shadowOpacity = 0.5f;

    
    self.rightShadowView.layer.shadowColor = [UIColor blackColor].CGColor;
    self.rightShadowView.layer.shadowRadius = 10.0f;
    self.rightShadowView.layer.shadowOffset = CGSizeMake(-2, -20);
    self.rightShadowView.layer.shadowOpacity = 0.5f;

    
    self.rightOuterView.layer.masksToBounds = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
