//
//  DLViewController.h
//  DeepLink
//
//  Created by Yeng Sang on 8/1/13.
//  Copyright (c) 2013 Yeng Sang. All rights reserved.
//

#import <UIKit/UIKit.h>
@class DLDataController;
@class DLCompanyProfile;

@interface DLViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *companyName;
@property (weak, nonatomic) IBOutlet UIImageView *companyLogo;
@property (weak, nonatomic) IBOutlet UIWebView *companyWebsite;
@property (strong, nonatomic) DLDataController *dataController;
@property (strong, nonatomic) DLCompanyProfile *companyProfile;

@end
