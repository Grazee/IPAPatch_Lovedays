//
//  UserData.m
//  IPAPatch
//
//  Created by 喂草 on 2017/10/17.
//  Copyright © 2017年 Weibo. All rights reserved.
//

#import "UserData+Hook.h"
#import "UserData.h"

#import "JRSwizzle.h"

@implementation NSObject(UserDataHook)

+ (void)hookUserData {
    NSError *error;
    [self jr_swizzleMethod:@selector(hideAd) withMethod:@selector(my_hideAd) error:&error];
    if (error) {
        NSLog(@"++++++++++Swizzling Error: %@", error);
    }
}

- (BOOL)my_hideAd {
    return YES;
}

@end
