//
//  NSObject+AOP.m
//  AOPDemo
//
//  Created by runlin on 17/2/22.
//  Copyright © 2017年 gavin. All rights reserved.
//

#import "NSObject+AOP.h"
#import <objc/runtime.h>

@implementation NSObject (AOP)


+ (void)aop_exchangeMethod:(SEL)oldSel andNewSelector:(SEL)newSel{

    
    Method oldMethod = class_getInstanceMethod([self class], oldSel);
    
    Method newMethod = class_getInstanceMethod([self class], newSel);
    
    method_exchangeImplementations(oldMethod, newMethod);
    
}

@end
