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

@interface ICAInitialViewController () {
    CALayer *layer;
}

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
    //create a replicator layer and add it to our view
    /*
    CAReplicatorLayer *replicator = [CAReplicatorLayer layer]; replicator.frame = self.containerView.bounds;
    [self.containerView.layer addSublayer:replicator];
    //configure the replicator
    replicator.instanceCount = 10;
    //apply a transform for each instance
    CATransform3D transform = CATransform3DIdentity;
    transform = CATransform3DTranslate(transform, 0, 200, 0);
    transform = CATransform3DRotate(transform, M_PI / 5.0, 0, 0, 1);
    transform = CATransform3DTranslate(transform, 0, -200, 0);
    replicator.instanceTransform = transform;
    //apply a color shift for each instance
    replicator.instanceBlueOffset = -0.1; replicator.instanceGreenOffset = -0.1;
    //create a sublayer and place it inside the replicator
    CALayer *layer = [CALayer layer];
    layer.frame = CGRectMake(100.0f, 100.0f, 100.0f, 100.0f); layer.backgroundColor = [UIColor whiteColor].CGColor; [replicator addSublayer:layer];
     */
    
  
    CAReplicatorLayer *replicator = [CAReplicatorLayer layer];
    replicator.frame = self.containerView.bounds;
    [self.containerView.layer addSublayer:replicator];
    replicator.instanceCount = 10;
    
    CATransform3D transform = CATransform3DIdentity;
    transform = CATransform3DTranslate(transform, 50, 0, 0);
//    transform = CATransform3DRotate(transform, M_PI / 5.0, 0, 0, 1);
    replicator.instanceTransform = transform;
    
    replicator.instanceBlueOffset = -0.1;
    replicator.instanceRedOffset = -0.15;
    replicator.instanceGreenOffset = -0.2;
    
    replicator.instanceDelay = 0.15;
    
    layer = [CALayer layer];
    layer.frame = CGRectMake(10.0, 10.0, 25.0, 25.0);
//    layer.opacity = 0.0;
    
    layer.backgroundColor = [UIColor greenColor].CGColor;
    [replicator addSublayer:layer];
    
    CAReplicatorLayer *replicator2 = [CAReplicatorLayer layer];
    replicator2.frame = replicator.frame;
    [self.containerView.layer addSublayer:replicator2];

    
    replicator2.instanceCount = 5;
    CATransform3D transform2 = CATransform3DIdentity;
    transform2 = CATransform3DTranslate(transform2, 0.0, 50.0, 0.0);
    replicator2.instanceTransform = transform2;
    replicator2.instanceDelay = 0.40;
    [replicator2 addSublayer:replicator];
   
    /*
    CABasicAnimation *animation = [CABasicAnimation animation];
    animation.keyPath = @"opacity";
    animation.toValue = [NSNumber numberWithInt:100];
    animation.duration = 1.0;
    animation.delegate = self;
    [layer addAnimation:animation forKey:@"animation"];
     */
}

-(void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag {
    layer.opacity = 100;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
