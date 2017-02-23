//
//  NSObject+AOP.h
//  AOPDemo
//
//  Created by runlin on 17/2/22.
//  Copyright © 2017年 gavin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (AOP)
+ (void)aop_exchangeMethod:(SEL)oldSel andNewSelector:(SEL)newSel;
@end
