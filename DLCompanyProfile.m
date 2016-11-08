//
//  DLCompanyProfile.m
//  DeepLink
//
//  Created by Yeng Sang on 8/1/13.
//  Copyright (c) 2013 Yeng Sang. All rights reserved.
//

#import "DLCompanyProfile.h"

@implementation DLCompanyProfile

-(id)initWithName:(NSString *)name url:(NSString *)url
{
    self = [super init];
    if (self) {
        _name = name;
        _URL = url;
        return self;
    }
    return nil;
}

@end
