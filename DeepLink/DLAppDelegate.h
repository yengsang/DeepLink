//
//  DLAppDelegate.h
//  DeepLink
//
//  Created by Yeng Sang on 8/1/13.
//  Copyright (c) 2013 Yeng Sang. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DLDataController;

@interface DLAppDelegate : UIResponder <UIApplicationDelegate>
@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) DLDataController *dataController;

@end
