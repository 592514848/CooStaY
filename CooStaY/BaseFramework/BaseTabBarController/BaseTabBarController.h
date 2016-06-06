//
//  BaseTabBarController.h
//  Giivv
//
//  Created by Xiong, Zijun on 16/4/7.
//  Copyright © 2016年 Xiong, ZIjun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseNavigationController.h"
@interface BaseTabBarController : UITabBarController


/**
 *  显示TabBar
 */
- (void)showTabBar;
/**
 *  隐藏TabBar
 */
- (void)dismissTabBar;
@end
