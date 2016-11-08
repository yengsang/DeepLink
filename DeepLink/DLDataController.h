//
//  DLDataController.h
//  DeepLink
//
//  Created by Yeng Sang on 8/1/13.
//  Copyright (c) 2013 Yeng Sang. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DLCompanyProfile;

@interface DLDataController : NSObject

@property (strong, nonatomic) DLCompanyProfile *profile;

+ (DLDataController *)sharedCenter; 
- (DLCompanyProfile *) getCompanyProfile;
- (void)setCompanyProfile:(NSString *)companyName companyWebsite:(NSString *)URL;
-(id)initOnly;

@end
