//
//  BaseViewController.m
//  Giivv
//
//  Created by Xiong, Zijun on 16/4/7.
//  Copyright © 2016年 Xiong, ZIjun. All rights reserved.
//

#import "BaseViewController.h"

@implementation BaseViewController
#pragma mark - getters and setters
- (UIView *)customerNavigationBar{
    if(!_customerNavigationBar){
        _customerNavigationBar = [[UIView alloc] initWithFrame: CGRectMake(0.0f, 0.0f, SCREEN_WIDTH, NAVIGATIONBAR_HEIGHT)];
        [_customerNavigationBar setBackgroundColor: [[UIColor alloc] initWithWhite: 0.9f alpha: 0.5f]];
    }
    return _customerNavigationBar;
}

- (UIImageView *)contentView{
    if(!_contentView){
        _contentView = [[UIImageView alloc] initWithFrame: [UIScreen mainScreen].bounds];
        [_contentView setImage: [UIImage imageNamed: @"bg_test1"]];
    }
    return _contentView;
}

#pragma mark - load
- (id)init{
    self = [super init];
    if(self){
        /**
         *  初始化当前视图的高度
         */
        self.contentHeight = (SCREEN_HEIGHT - NAVIGATIONBAR_HEIGHT);
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated{
    //
    [self.navigationController.navigationBar setHidden: YES];
    //
    [self.view addSubview: self.customerNavigationBar];
    [self.view bringSubviewToFront: self.customerNavigationBar];
    
}


- (void)viewDidLoad{
    [super viewDidLoad];
    
    [self.view insertSubview: self.contentView atIndex: 0];
    
    [self.view setBackgroundColor: [UIColor viewBackgroundColor]];
    [[UIApplication sharedApplication] setStatusBarStyle: UIStatusBarStyleLightContent];
    [self.navigationController.navigationBar setBarStyle: UIBarStyleBlack];
    /**
     *  设置视图布局的起始点从navigationBar底部开始
     */
//    self.navigationController.navigationBar.translucent = NO;
}
@end
