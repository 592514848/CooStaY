
//
//  BaseTabBarController.m
//  Giivv
//
//  Created by Xiong, Zijun on 16/4/7.
//  Copyright © 2016年 Xiong, ZIjun. All rights reserved.
//

#import "BaseTabBarController.h"
//#import "TestViewController.h"
#import <UIView+SDAutoLayout.h>

@interface BaseTabBarController()
{
    NSArray *tabBarArray;
    UIButton *lastSelectTabBarButton;
    UIView *customBackgroundView;
}
@end

@implementation BaseTabBarController
#pragma mark - getters and setters

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
    //创建自定义背景
    customBackgroundView = [[UIView alloc] initWithFrame: CGRectMake(0.0f, SCREEN_HEIGHT - TABBAR_HEIGHT, SCREEN_WIDTH, TABBAR_HEIGHT)];
    [customBackgroundView setBackgroundColor: [[UIColor alloc] initWithWhite: 0.9f alpha: 0.6f]];
    [self.view addSubview: customBackgroundView];
    [self.view bringSubviewToFront: customBackgroundView];
    //创建按钮
    NSInteger viewCount = 2;
    CGFloat itemWidth = SCREEN_WIDTH / viewCount;
    CGFloat itemHeight =  TABBAR_HEIGHT, itemTextHeight = 20.0f, itemBottomHeight = 5.0f;
    CGFloat itemImageViewHeight = itemHeight - itemTextHeight - itemBottomHeight;
    for(int i = 0 ; i < viewCount; i++){
        //viewController
        BaseNavigationController *navigationController = [[BaseNavigationController alloc] init];
//        TestViewController *homePageVC = [[TestViewController alloc] init];
//        [homePageVC setTitle: @"Test"];
//        [navigationController pushViewController: homePageVC animated: YES];
        [self addChildViewController: navigationController];
        
        //Tabbar Button
        UIButton *itemButton = [UIButton buttonWithType: UIButtonTypeCustom];
        [itemButton setFrame: CGRectMake(i*itemWidth,  2.0f, itemWidth, itemHeight)];
        [itemButton addTarget: self action: @selector(selectedTabItem:) forControlEvents: UIControlEventTouchUpInside];
        [itemButton setTag: i];
        [itemButton setShowsTouchWhenHighlighted: YES];
        [itemButton setTitle: @"test" forState: UIControlStateNormal];
//        [itemButton setTitleEdgeInsets: UIEdgeInsetsMake(35.0f, 0.0f, 5.0f, 0.0f)];
        [itemButton.titleLabel setFont: [UIFont systemFontOfSize: 12.0f]];
        [customBackgroundView addSubview: itemButton];
        
        //TabBar title
        UIImageView *itemImageView = [[UIImageView alloc] initWithFrame: CGRectMake(0.0f, 5.0f, itemWidth, itemImageViewHeight)];
        [itemImageView setContentMode: UIViewContentModeScaleAspectFit];
        [itemButton addSubview: itemImageView];
        if(i == 0){
            lastSelectTabBarButton = itemButton;
            [itemButton setBackgroundColor: [UIColor clearColor]];
        }
    }
    [self setSelectedIndex: 0];
}

#pragma mark - select tabbarItem
- (void)selectedTabItem: (UIButton *)sender
{
//    [(UINavigationController *)self.selectedViewController popToRootViewControllerAnimated: NO];
    
    [lastSelectTabBarButton setBackgroundColor: [UIColor redColor]];
    
    [sender setBackgroundColor: [UIColor whiteColor]];
    lastSelectTabBarButton = sender;
    if(self.selectedIndex != [sender tag])
    {
        [self setSelectedIndex: [sender tag]];
    }
}

- (void)dismissTabBar{
    [UIView animateWithDuration: 0.3f animations:^{
        [customBackgroundView setTop_sd: SCREEN_HEIGHT];
    }];
}

- (void)showTabBar{
    [UIView animateWithDuration: 0.3f animations:^{
        [customBackgroundView setTop_sd: SCREEN_HEIGHT - TABBAR_HEIGHT];
    }];
}

#pragma mark - load viewControllers
//- (void)loadViewControllers{
//    NSMutableArray *controllersArray = [NSMutableArray array];
//    for(NSInteger i = 0; i < 2; i++){
//        BaseNavigationController *navigationController = [[BaseNavigationController alloc] init];
//        switch (i) {
//            case 0:{
//            }
//            default:{
//                TestViewController *homePageVC = [[TestViewController alloc] init];
//                [homePageVC setTitle: @"Test"];
//                [navigationController pushViewController: homePageVC animated: YES];
//                break;
//                break;
//            }
//        }
////        [navigationController.tabBarItem setImage: [[UIImage imageNamed:@"ic_product_normal"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
////        [navigationController.tabBarItem setSelectedImage: [[UIImage imageNamed:@"ic_product_pressed"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
//        [navigationController.tabBarItem setTitlePositionAdjustment: UIOffsetMake(0.0f, -4.0f)];
//        [navigationController.tabBarItem setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor blackColor],NSForegroundColorAttributeName, nil]forState:UIControlStateSelected];
//        [controllersArray addObject: navigationController];
//    }
//    [self setViewControllers: controllersArray];
//}
@end
