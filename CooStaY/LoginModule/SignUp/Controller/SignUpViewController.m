//
//  SignUpViewController.m
//  CooStaY
//
//  Created by Xiong, Zijun on 6/6/16.
//  Copyright © 2016 Youdar. All rights reserved.
//

#import "SignUpViewController.h"
#import "SignUpMainView.h"

@interface SignUpViewController ()
@property(nonatomic, strong) SignUpMainView *mainView;
@end

@implementation SignUpViewController
#pragma mark - getteres and setters
- (SignUpMainView *)mainView{
    if(!_mainView){
        _mainView = [[SignUpMainView alloc] init];
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
