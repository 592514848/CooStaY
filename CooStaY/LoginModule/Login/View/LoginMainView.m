//
//  LoginMainView.m
//  CooStaY
//
//  Created by Xiong, Zijun on 6/6/16.
//  Copyright © 2016 Youdar. All rights reserved.
//
#define BUTTTON_HEIGHT 40.0f
#define MARGIN_LEFT 40.0f
#import "LoginMainView.h"

@interface LoginMainView ()
@property(nonatomic, strong) UIImageView *iconImageView;
@property(nonatomic, strong) BaseButton *facebookLoginButton;
@property(nonatomic, strong) BaseButton *wechatLoginButton;
@property(nonatomic, strong) BaseButton *localLoginButton;
@property(nonatomic, strong) BaseButton *registerButton;
@end

@implementation LoginMainView
#pragma mark - getters and setters
- (UIImageView *)iconImageView{
    if(!_iconImageView){
        _iconImageView = [[UIImageView alloc] init];
        [_iconImageView setContentMode: UIViewContentModeScaleAspectFit];
        [_iconImageView setImage: [UIImage imageNamed: @"ic_login_top"]];
    }
    return _iconImageView;
}

- (BaseButton *)facebookLoginButton{
    if(!_facebookLoginButton){
        _facebookLoginButton = [[BaseButton alloc] init];
        [_facebookLoginButton.layer setCornerRadius: 5.0f];
        [_facebookLoginButton .layer setMasksToBounds: YES];
        [_facebookLoginButton.layer setBorderColor: [[UIColor alloc] initWithWhite: 0.9f alpha: 0.5f].CGColor];
        ;
        [_facebookLoginButton setBackgroundColor: HEX_RGB_Alpha(0x3c5b98,0.5f)];
        [_facebookLoginButton.layer setBorderWidth: 1.0f];
    }
    return _facebookLoginButton;
}

- (BaseButton *)wechatLoginButton{
    if(!_wechatLoginButton){
        _wechatLoginButton = [[BaseButton alloc] init];
        [_wechatLoginButton.layer setCornerRadius: 5.0f];
        [_wechatLoginButton .layer setMasksToBounds: YES];
        [_wechatLoginButton.layer setBorderColor: [[UIColor alloc] initWithWhite: 0.9f alpha: 0.5f].CGColor];
        ;
        [_wechatLoginButton setBackgroundColor: HEX_RGB_Alpha(0x28a73e,0.5f)];
        [_wechatLoginButton.layer setBorderWidth: 1.0f];
    }
    return _wechatLoginButton;
}

- (BaseButton *)localLoginButton{
    if(!_localLoginButton){
        _localLoginButton = [[BaseButton alloc] init];
        [_localLoginButton.layer setCornerRadius: 5.0f];
        [_localLoginButton .layer setMasksToBounds: YES];
        [_localLoginButton.layer setBorderColor: [[UIColor alloc] initWithWhite: 0.9f alpha: 0.5f].CGColor];
        ;
        [_localLoginButton setBackgroundColor: [UIColor clearColor]];
        [_localLoginButton setTitle: @"登录" forState: UIControlStateNormal];
        [_localLoginButton.titleLabel setFont: [UIFont systemFontOfSize: 15.0f]];
        [_localLoginButton setTitleColor: [UIColor textWhiteColor] forState: UIControlStateNormal];
        [_localLoginButton.layer setBorderWidth: 1.0f];
    }
    return _localLoginButton;
}

- (BaseButton *)registerButton{
    if(!_registerButton){
        _registerButton = [[BaseButton alloc] init];
        [_registerButton.layer setCornerRadius: 5.0f];
        [_registerButton .layer setMasksToBounds: YES];
        [_registerButton.layer setBorderColor: [[UIColor alloc] initWithWhite: 0.9f alpha: 0.5f].CGColor];
        ;
        [_registerButton setBackgroundColor: [UIColor clearColor]];
        [_registerButton setTitle: @"注册" forState: UIControlStateNormal];
        [_registerButton.titleLabel setFont: [UIFont systemFontOfSize: 15.0f]];
        [_registerButton setTitleColor: [UIColor textWhiteColor] forState: UIControlStateNormal];
        [_registerButton.layer setBorderWidth: 1.0f];
        [_registerButton addTarget: self action: @selector(registerButtonClick:) forControlEvents: UIControlEventTouchUpInside];
    }
    return _registerButton;
}

#pragma mark - init
- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if(self){
        [self setFrame: CGRectMake(0.0f, 0.0f, SCREEN_WIDTH, SCREEN_HEIGHT)];
        //icon image
        [self addSubview: self.iconImageView];
        self.iconImageView.sd_layout
        .leftSpaceToView(self, MARGIN_LEFT)
        .topSpaceToView(self, NAVIGATIONBAR_HEIGHT + 10.0f)
        .rightSpaceToView(self, MARGIN_LEFT)
        .heightIs(120.0f);
        
        //facebook login
        [self addSubview: self.facebookLoginButton];
        self.facebookLoginButton.sd_layout
        .leftSpaceToView(self, MARGIN_LEFT)
        .rightSpaceToView(self, MARGIN_LEFT)
        .bottomSpaceToView(self, 3 * (BUTTTON_HEIGHT + 10.0f))
        .heightIs(BUTTTON_HEIGHT);
        
        //wechat login
        [self addSubview: self.wechatLoginButton];
        self.wechatLoginButton.sd_layout
        .leftSpaceToView(self, MARGIN_LEFT)
        .rightSpaceToView(self, MARGIN_LEFT)
        .topSpaceToView(self.facebookLoginButton, 10.0f)
        .heightIs(BUTTTON_HEIGHT);
        
        //local login
        [self addSubview: self.localLoginButton];
        self.localLoginButton.sd_layout
        .leftSpaceToView(self, MARGIN_LEFT)
        .topSpaceToView(self.wechatLoginButton, 10.0f)
        .widthRatioToView(self.registerButton, 0.5f)
        .heightIs(BUTTTON_HEIGHT);
        
        //register button
        [self addSubview: self.registerButton];
        self.registerButton.sd_layout
        .leftSpaceToView(self.localLoginButton, 10.0f)
        .rightSpaceToView(self, MARGIN_LEFT)
        .topEqualToView(self.localLoginButton)
        .heightIs(BUTTTON_HEIGHT);
    }
    return self;
}

#pragma mark - button click
- (void)registerButtonClick:(UIButton *)sender{
    if(IsNilOrNull(self.onRegisterButtonCLick)){
        return;
    }
    self.onRegisterButtonCLick();
}
@end
