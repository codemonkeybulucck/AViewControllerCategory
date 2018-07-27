//
//  CTMediator+ModuleAActions.m
//  moduleTest
//
//  Created by lemon on 2018/7/27.
//  Copyright © 2018年 Lemon. All rights reserved.
//

#import "CTMediator+ModuleAActions.h"

@implementation CTMediator (ModuleAActions)
- (UIViewController*)fetchAViewController{
    UIViewController *vc = [self performTarget:@"AViewController" action:@"fetchAViewController" params:@{@"navTitle":@"This is A ViewController"} shouldCacheTarget:NO];
    if ([vc isKindOfClass:[UIViewController class]]) {
        return vc;
    }else{
        return [[UIViewController alloc]init];
    }
}
@end
