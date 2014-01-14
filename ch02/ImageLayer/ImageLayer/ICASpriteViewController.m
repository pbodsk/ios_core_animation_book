//
//  ICASpriteViewController.m
//  ImageLayer
//
//  Created by Peter Bødskov on 14/01/14.
//  Copyright (c) 2014 Peter Bødskov. All rights reserved.
//

#import "ICASpriteViewController.h"
@import QuartzCore;

@interface ICASpriteViewController ()

@end

@implementation ICASpriteViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    UIImage *spritesImage = [UIImage imageNamed:@"Sprites"];
    
    [self addSpriteImage:spritesImage withContentRect:CGRectMake(0.0f, 0.0f, 0.5f, 0.5f) toLayer:self.iglooView.layer];
    [self addSpriteImage:spritesImage withContentRect:CGRectMake(0.5f, 0.0f, 0.5f, 0.5f) toLayer:self.coneView.layer];
    [self addSpriteImage:spritesImage withContentRect:CGRectMake(0.0f, 0.5f, 0.5f, 0.5f) toLayer:self.anchorView.layer];
    [self addSpriteImage:spritesImage withContentRect:CGRectMake(0.5f, 0.5f, 0.5f, 0.5f) toLayer:self.shipView.layer];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)addSpriteImage:(UIImage *)image withContentRect:(CGRect)rect toLayer:(CALayer *)layer {
    layer.contents = (__bridge id)(image.CGImage);
    
    //scale
    layer.contentsGravity = kCAGravityResizeAspect;
    
    layer.contentsRect = rect;
}

@end
