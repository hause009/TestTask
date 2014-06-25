//
//  BallController.h
//  TestTask
//
//  Created by Admin on 25.06.14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"


@interface BallController : UIViewController
@property AppDelegate * sharedManager;
@property IBOutlet UIButton * Button;
@property int Play;
@end
