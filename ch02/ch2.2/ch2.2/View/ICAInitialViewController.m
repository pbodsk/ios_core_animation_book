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

- (void)addStretchableImage:(UIImage *)image withContentsCenter:(CGRect)contentsCenter toLayer:(CALayer *)layer {
    layer.contents = (__bridge id)image.CGImage;
    layer.contentsCenter = contentsCenter;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    UIImage *image = [UIImage imageNamed:@"Button"];
    [self addStretchableImage:image withContentsCenter:CGRectMake(0.25f, 0.25f, 0.5f, 0.5f) toLayer:self.button1.layer];
    [self addStretchableImage:image withContentsCenter:CGRectMake(0.25f, 0.25f, 0.5f, 0.5f) toLayer:self.button2.layer];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
