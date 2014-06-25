//
//  AppDelegate.h
//  TestTask
//
//  Created by Admin on 25.06.14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    UIImageView * Ball;
}
@property UIImageView * Ball;
+ (id)sharedManager;
@property (strong, nonatomic) UIWindow *window;

@end
