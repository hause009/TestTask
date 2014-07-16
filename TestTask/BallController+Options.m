//
//  BallController+Options.m
//  TestTask
//
//  Created by Admin on 25.06.14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import "BallController+Options.h"

@implementation BallController (Options)

//object parameters
-(UIImageView*)setParameters:(UIImageView *)ObjectBall
{
    [ObjectBall setFrame:CGRectMake(100, 100, 50, 50)];
    ObjectBall.layer.cornerRadius = 25;
    ObjectBall.layer.masksToBounds = YES;
    ObjectBall.backgroundColor = [UIColor redColor];
    
    return ObjectBall;
}

//sets coordinates
-(CGRect)setBallFrame:(UIImageView *)ObjectBall BallX:(CGFloat)CordX BallY:(CGFloat)CordY
{
    CGRect Frame = ObjectBall.frame;
    Frame.origin.x = CordX;
    Frame.origin.y = CordY;
    return  Frame;
}
@end
