//
//  BallController.m
//  TestTask
//
//  Created by Admin on 25.06.14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import "BallController.h"
#import "BallController+Options.h"

@interface BallController ()

@end

@implementation BallController
@synthesize sharedManager;
@synthesize Play,Button;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    sharedManager = [AppDelegate sharedManager];
    [self setParameters:sharedManager.Ball];
    [self.view addSubview:sharedManager.Ball];
    
    [Button setTitle: @"Play" forState: UIControlStateNormal];
    
}

//Top of the Game
-(IBAction)StartGame:(id)sender
{
    if (Play == 1)
    {
        Play = 0;
        [Button setTitle: @"Play" forState: UIControlStateNormal];
    }
    else
    {
        Play = 1;
        [Button setTitle: @"Stop" forState: UIControlStateNormal];
        
    }
    [self DrawBallX:sharedManager.Ball.frame.origin.x BallY:sharedManager.Ball.frame.origin.y Anlge:M_PI/4];
}

//calculation of the following coordinates and angle
-(void)CalculationCoordinatesBallX:(CGFloat)ballX BallY:(CGFloat)ballY Anlge:(CGFloat)Anlge
{
    int offset = 7;
    int r1 = ballX + (cos(Anlge) * offset);
    int r2 = ballY - (sin(Anlge) * offset);
    
    if (r1 < 0 || r1 + 50 > self.view.frame.size.width) {
        Anlge = M_PI - Anlge;
    }
    if (r2 < 0 || r2 + 50 > self.view.frame.size.height) {
        Anlge = 2*M_PI - Anlge;
    }
    
    ballX = r1;
    ballY = r2;
    
    if (Play ==1) {
        [self DrawBallX:ballX BallY:ballY Anlge:Anlge];
    }
    else
    {
        NSLog(@"STOP");
    }
}

//draw ball
-(void)DrawBallX:(CGFloat)ballX BallY:(CGFloat)ballY Anlge:(CGFloat)Anlge
{
    [UIView transitionWithView:self.view duration:0.01 options:UIViewAnimationOptionCurveLinear animations:^{
        
        sharedManager.Ball.frame = [self setBallFrame:sharedManager.Ball BallX:ballX BallY:ballY];
    }
                    completion:^(BOOL finished) {
                        
                        [self CalculationCoordinatesBallX:ballX BallY:ballY Anlge:Anlge];
                        
                    }];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}



@end
