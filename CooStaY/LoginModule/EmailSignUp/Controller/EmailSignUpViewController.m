//
//  SignUpViewController.m
//  CooStaY
//
//  Created by Xiong, Zijun on 6/6/16.
//  Copyright © 2016 Youdar. All rights reserved.
//

#import "EmailSignUpViewController.h"
#import "EmailSignUpMainView.h"
#import "PhoneSignUpViewController.h"

@interface EmailSignUpViewController ()
@property(nonatomic, strong) EmailSignUpMainView *mainView;
@end

@implementation EmailSignUpViewController
#pragma mark - getteres and setters
- (EmailSignUpMainView *)mainView{
    if(!_mainView){
        _mainView = [[EmailSignUpMainView alloc] init];
    }
    return _mainView;
}

#pragma mark - load
- (void)viewDidLoad{
    [super viewDidLoad];
    [self.view addSubview: self.mainView];
    
    WS(weakSelf);
    [self.mainView setOnPhoneRegisterClick:^{
        dispatch_async(dispatch_get_main_queue(), ^{
            PhoneSignUpViewController *phoneSignUpVC = [[PhoneSignUpViewController alloc] init];
            [weakSelf.navigationController pushViewController: phoneSignUpVC animated: YES];
        });
    }];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.customerNavigationBar setHidden: YES];
}

@end
