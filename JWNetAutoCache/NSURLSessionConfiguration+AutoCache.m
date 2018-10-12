//
//  NSURLSessionConfiguration+AutoCache.m
//  car8891
//
//  Created by Tc8891 on 2018/10/10.
//  Copyright © 2018 8891.com.tw. All rights reserved.
//

#import "NSURLSessionConfiguration+AutoCache.h"
#import <objc/runtime.h>
#import "JWCacheURLProtocol.h"

@implementation NSURLSessionConfiguration (AutoCache)

+ (NSURLSessionConfiguration *)sw_defaultSessionConfiguration {
    NSURLSessionConfiguration *config = [self sw_defaultSessionConfiguration];
    config.protocolClasses = @[JWCacheURLProtocol.class];
    return config;
}

+ (void)exchangeDefaultSessionConfigurationImplementations {
    Method defaultSessionConfiguration =  class_getClassMethod([self class], @selector(defaultSessionConfiguration));
    Method sw_defaultSessionConfiguration = class_getClassMethod([self class], @selector(sw_defaultSessionConfiguration));
    method_exchangeImplementations(defaultSessionConfiguration, sw_defaultSessionConfiguration);
}

@end
