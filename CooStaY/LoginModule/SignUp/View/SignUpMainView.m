//
//  SignUpMainView.m
//  CooStaY
//
//  Created by Xiong, Zijun on 6/6/16.
//  Copyright © 2016 Youdar. All rights reserved.
//

#define BUTTTON_HEIGHT 40.0f
#define MARGIN_LEFT 40.0f
#import "SignUpMainView.h"

@interface SignUpMainView ()
@property(nonatomic, strong) UILabel *titleLabel;
@property(nonatomic, strong) BaseTextField *emailTextField;
@property(nonatomic, strong) BaseTextField *userNameTextFiled;
@property(nonatomic, strong) BaseTextField *passwordTextFiled;
@property(nonatomic, strong) BaseTextField *comfirmPasswordTextFiled;
@end

@implementation SignUpMainView
#pragma mark - getters and setters
- (UILabel *)titleLabel{
    if(!_titleLabel){
        _titleLabel = [[UILabel alloc] init];
        [_titleLabel setTextColor: [UIColor textWhiteColor]];
        [_titleLabel setFont: [UIFont systemFontOfSize: 20.0f]];
        [_titleLabel setText: @"创建用户"];
        [_titleLabel setTextAlignment: NSTextAlignmentCenter];
    }
    return _titleLabel;
}

- (BaseTextField *)emailTextField{
    if(!_emailTextField){
        _emailTextField = [[BaseTextField alloc] init];
        [_emailTextField.layer setCornerRadius: 5.0f];
        [_emailTextField .layer setMasksToBounds: YES];
        [_emailTextField.layer setBorderColor: [[UIColor alloc] initWithWhite: 0.9f alpha: 0.5f].CGColor];
        [_emailTextField setBackgroundColor: [UIColor clearColor]];
        [_emailTextField.layer setBorderWidth: 1.0f];
        [_emailTextField.leftPaddingView setWidth_sd: BUTTTON_HEIGHT];
        //icon
        UIImageView *iconImageView = [[UIImageView alloc] initWithFrame: CGRectMake(5.0f, 5.0f, BUTTTON_HEIGHT - 10.0f, BUTTTON_HEIGHT - 10.0f)];
        [iconImageView setImage: [UIImage imageNamed: @"ic_login_username"]];
        [iconImageView setContentMode: UIViewContentModeScaleAspectFit];
        [_emailTextField.leftPaddingView addSubview: iconImageView];
    }
    return _emailTextField;
}

- (BaseTextField *)userNameTextFiled{
    if(!_userNameTextFiled){
        _userNameTextFiled = [[BaseTextField alloc] init];
        [_userNameTextFiled.layer setCornerRadius: 5.0f];
        [_userNameTextFiled .layer setMasksToBounds: YES];
        [_userNameTextFiled.layer setBorderColor: [[UIColor alloc] initWithWhite: 0.9f alpha: 0.5f].CGColor];
        [_userNameTextFiled setBackgroundColor: [UIColor clearColor]];
        [_userNameTextFiled.layer setBorderWidth: 1.0f];
        [_userNameTextFiled.leftPaddingView setWidth_sd: BUTTTON_HEIGHT];
        //icon
        UIImageView *iconImageView = [[UIImageView alloc] initWithFrame: CGRectMake(5.0f, 5.0f, BUTTTON_HEIGHT - 10.0f, BUTTTON_HEIGHT - 10.0f)];
        [iconImageView setImage: [UIImage imageNamed: @"ic_login_username"]];
        [iconImageView setContentMode: UIViewContentModeScaleAspectFit];
        [_userNameTextFiled.leftPaddingView addSubview: iconImageView];
    }
    return _userNameTextFiled;
}

- (BaseTextField *)passwordTextFiled{
    if(!_passwordTextFiled){
        _passwordTextFiled = [[BaseTextField alloc] init];
        [_passwordTextFiled.layer setCornerRadius: 5.0f];
        [_passwordTextFiled .layer setMasksToBounds: YES];
        [_passwordTextFiled.layer setBorderColor: [[UIColor alloc] initWithWhite: 0.9f alpha: 0.5f].CGColor];
        [_passwordTextFiled setBackgroundColor: [UIColor clearColor]];
        [_passwordTextFiled.layer setBorderWidth: 1.0f];
        [_passwordTextFiled.leftPaddingView setWidth_sd: BUTTTON_HEIGHT];
        //icon
        UIImageView *iconImageView = [[UIImageView alloc] initWithFrame: CGRectMake(5.0f, 5.0f, BUTTTON_HEIGHT - 10.0f, BUTTTON_HEIGHT - 10.0f)];
        [iconImageView setImage: [UIImage imageNamed: @"ic_login_username"]];
        [iconImageView setContentMode: UIViewContentModeScaleAspectFit];
        [_passwordTextFiled.leftPaddingView addSubview: iconImageView];
    }
    return _passwordTextFiled;
}

- (BaseTextField *)comfirmPasswordTextFiled{
    if(!_comfirmPasswordTextFiled){
        _comfirmPasswordTextFiled = [[BaseTextField alloc] init];
        [_comfirmPasswordTextFiled.layer setCornerRadius: 5.0f];
        [_comfirmPasswordTextFiled .layer setMasksToBounds: YES];
        [_comfirmPasswordTextFiled.layer setBorderColor: [[UIColor alloc] initWithWhite: 0.9f alpha: 0.5f].CGColor];
        [_comfirmPasswordTextFiled setBackgroundColor: [UIColor clearColor]];
        [_comfirmPasswordTextFiled.layer setBorderWidth: 1.0f];
        [_comfirmPasswordTextFiled.leftPaddingView setWidth_sd: BUTTTON_HEIGHT];
        //icon
        UIImageView *iconImageView = [[UIImageView alloc] initWithFrame: CGRectMake(5.0f, 5.0f, BUTTTON_HEIGHT - 10.0f, BUTTTON_HEIGHT - 10.0f)];
        [iconImageView setImage: [UIImage imageNamed: @"ic_login_username"]];
        [iconImageView setContentMode: UIViewContentModeScaleAspectFit];
        [_comfirmPasswordTextFiled.leftPaddingView addSubview: iconImageView];
    }
    return _comfirmPasswordTextFiled;
}

#pragma mark - init
- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if(self){
        [self setFrame: CGRectMake(0.0f, 0.0f, SCREEN_WIDTH, SCREEN_HEIGHT)];
        //icon image
        [self addSubview: self.titleLabel];
        self.titleLabel.sd_layout
        .leftSpaceToView(self, MARGIN_LEFT)
        .topSpaceToView(self, NAVIGATIONBAR_HEIGHT)
        .rightSpaceToView(self, MARGIN_LEFT)
        .heightIs(30.0f);
        
        //email
        [self addSubview: self.emailTextField];
        self.emailTextField.sd_layout
        .topSpaceToView(self.titleLabel, 30.0f)
        .leftSpaceToView(self, MARGIN_LEFT)
        .rightSpaceToView(self, MARGIN_LEFT)
        .heightIs(BUTTTON_HEIGHT);
        
        //username
        [self addSubview: self.userNameTextFiled];
        self.userNameTextFiled.sd_layout
        .topSpaceToView(self.emailTextField, 10.0f)
        .leftSpaceToView(self, MARGIN_LEFT)
        .rightSpaceToView(self, MARGIN_LEFT)
        .heightIs(BUTTTON_HEIGHT);
        
        //password
        [self addSubview: self.passwordTextFiled];
        self.passwordTextFiled.sd_layout
        .topSpaceToView(self.userNameTextFiled, 10.0f)
        .leftSpaceToView(self, MARGIN_LEFT)
        .rightSpaceToView(self, MARGIN_LEFT)
        .heightIs(BUTTTON_HEIGHT);
        
        //cofirm password
        [self addSubview: self.comfirmPasswordTextFiled];
        self.comfirmPasswordTextFiled.sd_layout
        .topSpaceToView(self.passwordTextFiled, 10.0f)
        .leftSpaceToView(self, MARGIN_LEFT)
        .rightSpaceToView(self, MARGIN_LEFT)
        .heightIs(BUTTTON_HEIGHT);
    }
    return self;
}

@end
