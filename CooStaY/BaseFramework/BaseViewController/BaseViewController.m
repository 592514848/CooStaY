//
//  BaseViewController.m
//  Giivv
//
//  Created by Xiong, Zijun on 16/4/7.
//  Copyright © 2016年 Xiong, ZIjun. All rights reserved.
//

#define kNavigationItem_width 80.0f
#import "BaseViewController.h"

@interface BaseViewController ()
@property(nonatomic, strong) UILabel *titleLabel;
@property(nonatomic, strong) UIButton *backButton;
@end

@implementation BaseViewController
#pragma mark - getters and setters
- (UIView *)customerNavigationBar{
    if(!_customerNavigationBar){
        _customerNavigationBar = [[UIView alloc] initWithFrame: CGRectMake(0.0f, 0.0f, SCREEN_WIDTH, NAVIGATIONBAR_HEIGHT)];
        [_customerNavigationBar setBackgroundColor: [[UIColor alloc] initWithWhite: 0.9f alpha: 0.5f]];
    }
    return _customerNavigationBar;
}

- (UIView *)navigationTitleView{
    if(!_navigationTitleView){
        _navigationTitleView = [[UIView alloc] initWithFrame: CGRectMake(kNavigationItem_width, STATUSBAR_HEIGHT, SCREEN_WIDTH - 2 * kNavigationItem_width, NAVIGATIONBAR_HEIGHT - STATUSBAR_HEIGHT)];
        [_navigationTitleView setBackgroundColor: [UIColor redColor]];
    }
    return _navigationTitleView;
}

- (UILabel *)titleLabel{
    if(!_titleLabel){
        _titleLabel = [[UILabel alloc] init];
    }
    return _titleLabel;
}

- (UIButton *)backButton{
    if(!_backButton){
        _backButton = [[UIButton alloc] init];
        [_backButton setImage: [UIImage imageNamed: @""] forState: UIControlStateNormal];
    }
    return _backButton;
}

- (UIImageView *)contentView{
    if(!_contentView){
        _contentView = [[UIImageView alloc] initWithFrame: [UIScreen mainScreen].bounds];
        [_contentView setImage: [UIImage imageNamed: @"bg_test1"]];
        [_contentView setUserInteractionEnabled: YES];
    }
    return _contentView;
}

#pragma mark - init
- (id)init{
    self = [super init];
    if(self){
        //初始化当前viewController的高度
        self.contentHeight = (SCREEN_HEIGHT - NAVIGATIONBAR_HEIGHT);
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated{
    //隐藏默认的navigationBar
    [self.navigationController.navigationBar setHidden: YES];
    //加载自定义的navigationBar
    [self initWithNavigationBar];
}

- (void)initWithNavigationBar{
    [self.view addSubview: self.customerNavigationBar];
    [self.view bringSubviewToFront: self.customerNavigationBar];
}

#pragma mark - load
- (void)viewDidLoad{
    [super viewDidLoad];
    //加载viewController的ContentView(背景图片)
    [self setView: self.contentView];
    //状态栏样式
    [[UIApplication sharedApplication] setStatusBarStyle: UIStatusBarStyleLightContent];
}
@end
