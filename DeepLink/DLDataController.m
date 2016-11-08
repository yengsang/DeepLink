//
//  DLDataController.m
//  DeepLink
//
//  Created by Yeng Sang on 8/1/13.
//  Copyright (c) 2013 Yeng Sang. All rights reserved.
//

#import "DLDataController.h"
#import "DLCompanyProfile.h"

@interface DLDataController ()
- (void)initializeDefaultDataList;
@end

@implementation DLDataController

static DLDataController *sharedAwardCenter = nil;    // static instance variable

+ (DLDataController *)sharedCenter {
    if (sharedAwardCenter == nil) {
        sharedAwardCenter = [[super alloc] init];
    }
    return sharedAwardCenter;
}

- (DLCompanyProfile *) getCompanyProfile{
    NSLog(@"company name: %@", self.profile);
    NSLog(@"company name: %@", self.profile.name);
     NSLog(@"company name: %@", self.profile.URL);
    return self.profile;
}
- (void)setCompanyProfile:(NSString *)companyName companyWebsite:(NSString *)URL{
    self.profile.name = companyName;
    self.profile.URL = URL;
    NSLog(@"company name: %@", companyName);
    NSLog(@"company name: %@", URL);
    NSLog(@"company name: %@", self.profile);
    NSLog(@"company name: %@", self.profile.name);
    NSLog(@"company name: %@", self.profile.URL);
}

- (void)initializeDefaultDataList {
    if (self.profile == NULL)
        self.profile = [[DLCompanyProfile alloc] initWithName:@"Pigeon" url:@"Everywhere"];
    [self setCompanyProfile:@"Google" companyWebsite:@"http://www.google.com"];
    
    //self.profile = [[DLCompanyProfile alloc] initWithName:@"Pigeon" url:@"Everywhere"];
}

- (id)init {
    
    if (self = [super init]) {
        NSLog(@"company name: %@", self);
        //DLCompanyProfile *sighting = [[DLCompanyProfile alloc] initWithName:@"Pigeon" url:@"Everywhere"];
        NSLog(@"company name: %@", self.profile);
        //if (self.profile == NULL)
        //self.profile = [[DLCompanyProfile alloc] initWithName:@"Pigeon" url:@"Everywhere"];
        [self initializeDefaultDataList];
        return self;
    }
    
    return nil;
}

- (id)initOnly{
    return self;
}

@end
