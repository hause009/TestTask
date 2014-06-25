//
//  BallController+Options.h
//  TestTask
//
//  Created by Admin on 25.06.14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import "BallController.h"

@interface BallController (Options)
-(void)setParameters:(UIImageView*)ObjectBall;
-(CGRect)setBallFrame:(UIImageView*)ObjectBall BallX:(CGFloat)CordX BallY:(CGFloat)CordY;
@end
