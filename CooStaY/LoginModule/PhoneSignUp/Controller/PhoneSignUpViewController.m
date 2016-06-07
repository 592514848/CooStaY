//
//  PhoneSignUpViewController.m
//  CooStaY
//
//  Created by Xiong, Zijun on 6/7/16.
//  Copyright © 2016 Youdar. All rights reserved.
//

#import "PhoneSignUpViewController.h"
#import "PhoneSignUpMainView.h"

@interface PhoneSignUpViewController ()
@property(nonatomic, strong) PhoneSignUpMainView *mainView;
@end

@implementation PhoneSignUpViewController
#pragma mark - getteres and setters
- (PhoneSignUpMainView *)mainView{
    if(!_mainView){
        _mainView = [[PhoneSignUpMainView alloc] init];
    }
    return _mainView;
}

#pragma mark - load
- (void)viewDidLoad{
    [super viewDidLoad];
    [self.view addSubview: self.mainView];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.customerNavigationBar setHidden: YES];
}
@end
