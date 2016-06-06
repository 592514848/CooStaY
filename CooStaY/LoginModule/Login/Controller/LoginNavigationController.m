//
//  LoginNavigationController.m
//  CooStaY
//
//  Created by Xiong, Zijun on 6/6/16.
//  Copyright © 2016 Youdar. All rights reserved.
//

#import "LoginNavigationController.h"

@implementation LoginNavigationController

- (void)viewWillAppear:(BOOL)animated{
}

- (void)viewDidLoad{
    [super viewDidLoad];
    
    //root View
    LoginViewController *loginVC = [[LoginViewController alloc] init];
    [self pushViewController: loginVC animated: YES];
}

@end
