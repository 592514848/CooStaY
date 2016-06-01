//
//  BaseViewController.h
//  Giivv
//
//  Created by Xiong, Zijun on 16/4/7.
//  Copyright © 2016年 Xiong, ZIjun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController
@property(nonatomic, strong) UIView *customerNavigationBar;
@property(nonatomic, strong) UIView *navigationTitleView;
@property(nonatomic, strong) UIView *navigationLeftView;
@property(nonatomic, strong) UIView *navigationRightView;
@property(nonatomic, strong) UIImageView *contentView;

/**
 *   当前视图的高度
 */
@property(nonatomic, assign) CGFloat contentHeight;
@end
