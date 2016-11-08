//
//  DLCompanyProfile.h
//  DeepLink
//
//  Created by Yeng Sang on 8/1/13.
//  Copyright (c) 2013 Yeng Sang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DLCompanyProfile : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *URL;

-(id)initWithName:(NSString *)name url:(NSString *)url;

@end
