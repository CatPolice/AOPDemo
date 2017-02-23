//
//  UINavigationController+AOP.m
//  AOPDemo
//
//  Created by runlin on 17/2/22.
//  Copyright © 2017年 gavin. All rights reserved.
//

#import "UINavigationController+AOP.h"
#import "NSObject+AOP.h"

@implementation UINavigationController (AOP)

+ (void)load{
    [self aop_exchangeMethod:@selector(pushViewController:animated:) andNewSelector:@selector(aop_pushViewController:animated:)];
}




- (void)aop_pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    
    NSArray *list = @[@"AViewController",@"BViewController"];
    
    NSString *className = NSStringFromClass([viewController class]);
    for (NSString *name in list) {
        if ([name isEqualToString:className]) {
            
            
            NSLog(@"%@",className);
            return;
            
        }
    }
    
    
    [self aop_pushViewController:viewController animated:animated];
    
    
}


@end
