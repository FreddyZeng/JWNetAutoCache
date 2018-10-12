//
//  NSURLSessionConfiguration+AutoCache.h
//  car8891
//
//  Created by Tc8891 on 2018/10/10.
//  Copyright © 2018 8891.com.tw. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSURLSessionConfiguration (AutoCache)
+ (void)exchangeDefaultSessionConfigurationImplementations;
@end

NS_ASSUME_NONNULL_END
