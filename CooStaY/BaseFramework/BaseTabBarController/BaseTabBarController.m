
//
//  BaseTabBarController.m
//  Giivv
//
//  Created by Xiong, Zijun on 16/4/7.
//  Copyright © 2016年 Xiong, ZIjun. All rights reserved.
//

#import "BaseTabBarController.h"
#import "HomePageViewController.h"
#import <UIView+SDAutoLayout.h>

@interface BaseTabBarController()
/**
 *  customer TabBarView
 */
@property(nonatomic, strong) UIView *tabBarMainView;

/**
 *  selectedButton
 */
@property(nonatomic, strong) UIButton *selectTabBarButton;
@end

@implementation BaseTabBarController
#pragma mark - getters and setters
- (UIView *)tabBarMainView{
    if(!_tabBarMainView){
        _tabBarMainView = [[UIView alloc] initWithFrame: CGRectMake(0.0f, SCREEN_HEIGHT - TABBAR_HEIGHT, SCREEN_WIDTH, TABBAR_HEIGHT)];
        [_tabBarMainView setBackgroundColor: [[UIColor alloc] initWithWhite: 0.9f alpha: 0.6f]];
    }
    return _tabBarMainView;
}

#pragma mark - Load
- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    for(UIView *view in [self.view subviews])
    {
        if([view isKindOfClass: [UITabBar class]])
        {
            [view setHidden: YES];
            break;
        }
    }
}

- (void)viewDidLoad{
    [super viewDidLoad];
    [self loadCustomerTabBar];
}

#pragma mark -
#pragma mark load customer tabbar
- (void)loadCustomerTabBar
{
    [self.view addSubview: self.tabBarMainView];
    [self.view bringSubviewToFront: self.tabBarMainView];
    
    //create tabbar item
    NSInteger viewCount = 2;
    CGFloat itemWidth = SCREEN_WIDTH / viewCount;
    CGFloat itemHeight =  TABBAR_HEIGHT, itemTextHeight = 20.0f, itemBottomHeight = 5.0f;
    CGFloat itemImageViewHeight = itemHeight - itemTextHeight - itemBottomHeight;
    for(int i = 0 ; i < viewCount; i++){
        
        BaseNavigationController *navigationController = [[BaseNavigationController alloc] init];
        HomePageViewController *homePageVC = [[HomePageViewController alloc] init];
        [homePageVC setTitle: @"主页"];
        [navigationController pushViewController: homePageVC animated: YES];
        [self addChildViewController: navigationController];
        
        //Tabbar Button
        UIButton *itemButton = [UIButton buttonWithType: UIButtonTypeCustom];
        [itemButton setFrame: CGRectMake(i*itemWidth,  2.0f, itemWidth, itemHeight)];
        [itemButton addTarget: self action: @selector(selectedTabItem:) forControlEvents: UIControlEventTouchUpInside];
        [itemButton setTag: i];
        [itemButton setShowsTouchWhenHighlighted: YES];
        [itemButton setTitle: @"主页" forState: UIControlStateNormal];
//        [itemButton setTitleEdgeInsets: UIEdgeInsetsMake(35.0f, 0.0f, 5.0f, 0.0f)];
        [itemButton.titleLabel setFont: [UIFont systemFontOfSize: 12.0f]];
        [self.tabBarMainView addSubview: itemButton];
        
        //TabBar title
        UIImageView *itemImageView = [[UIImageView alloc] initWithFrame: CGRectMake(0.0f, 5.0f, itemWidth, itemImageViewHeight)];
        [itemImageView setContentMode: UIViewContentModeScaleAspectFit];
        [itemButton addSubview: itemImageView];
        if(i == 0){
            self.selectTabBarButton = itemButton;
            [itemButton setBackgroundColor: [UIColor clearColor]];
        }
    }
    [self setSelectedIndex: 0];
}

#pragma mark - select tabbarItem
- (void)selectedTabItem: (UIButton *)sender
{
    [self.selectTabBarButton setBackgroundColor: [UIColor redColor]];
    
    [sender setBackgroundColor: [UIColor whiteColor]];
    self.selectTabBarButton = sender;
    if(self.selectedIndex != [sender tag])
    {
        [self setSelectedIndex: [sender tag]];
    }
}

- (void)dismissTabBar{
    [UIView animateWithDuration: 0.3f animations:^{
        [self.tabBarMainView setTop_sd: SCREEN_HEIGHT];
    }];
}

- (void)showTabBar{
    [UIView animateWithDuration: 0.3f animations:^{
        [self.tabBarMainView setTop_sd: SCREEN_HEIGHT - TABBAR_HEIGHT];
    }];
}
@end
