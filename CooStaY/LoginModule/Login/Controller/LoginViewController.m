//
//  LoginViewController.m
//  CooStaY
//
//  Created by Xiong, Zijun on 6/6/16.
//  Copyright © 2016 Youdar. All rights reserved.
//

#import "LoginViewController.h"
#import "LoginMainView.h"
#import "EmailSignUpViewController.h"

@interface LoginViewController ()
@property(nonatomic, strong) LoginMainView *mainView;
@end

@implementation LoginViewController
#pragma mark - getteres and setters
- (LoginMainView *)mainView{
    if(!_mainView){
        _mainView = [[LoginMainView alloc] init];
    }
    return _mainView;
}

#pragma mark - load
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.customerNavigationBar setHidden: YES];
}

- (void)viewDidLoad{
    [super viewDidLoad];
    //main view
    [self.view addSubview: self.mainView];
    
    [self loadBlock];
}

- (void)loadBlock{
    WS(weakSelf);
    [self.mainView setOnRegisterButtonCLick:^{
        dispatch_async(dispatch_get_main_queue(), ^{
            EmailSignUpViewController *signUpVC = [[EmailSignUpViewController alloc] init];
            [weakSelf.navigationController pushViewController: signUpVC animated: YES];
        });
    }];
}
@end
