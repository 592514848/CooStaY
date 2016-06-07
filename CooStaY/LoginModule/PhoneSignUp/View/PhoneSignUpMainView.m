//
//  PhoneSignUpMainView.m
//  CooStaY
//
//  Created by Xiong, Zijun on 6/7/16.
//  Copyright © 2016 Youdar. All rights reserved.
//

#define BUTTTON_HEIGHT 40.0f
#define MARGIN_LEFT 40.0f
#import "PhoneSignUpMainView.h"

@interface PhoneSignUpMainView ()
@property(nonatomic, strong) UILabel *titleLabel;
@property(nonatomic, strong) BaseTextField *emailTextField;
@property(nonatomic, strong) BaseTextField *userNameTextFiled;
@property(nonatomic, strong) BaseTextField *passwordTextFiled;
@property(nonatomic, strong) BaseTextField *comfirmPasswordTextFiled;
@property(nonatomic, strong) UILabel *tipLabel;
@property(nonatomic, strong) BaseButton *submitButton;
@property(nonatomic, strong) BaseButton *phoneRegisterButton;
@property(nonatomic, strong) BaseButton *existAccountButton;
@property(nonatomic, strong) UILabel *protocolLabel;
@end

@implementation PhoneSignUpMainView
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

- (UILabel *)tipLabel{
    if(!_tipLabel){
        _tipLabel = [[UILabel alloc] init];
        [_tipLabel setTextColor: [UIColor textWhiteColor]];
        [_tipLabel setTextAlignment: NSTextAlignmentLeft];
        [_tipLabel setFont: [UIFont systemFontOfSize: 14.0f]];
        [_tipLabel setText: @"*密码需要至少六位，需要包含至少一个大写字母，一个小写字母和一个数字"];
    }
    return _tipLabel;
}

- (UILabel *)protocolLabel{
    if(!_protocolLabel){
        _protocolLabel = [[UILabel alloc] init];
        [_protocolLabel setTextColor: [UIColor textWhiteColor]];
        [_protocolLabel setTextAlignment: NSTextAlignmentCenter];
        [_protocolLabel setFont: [UIFont systemFontOfSize: 14.0f]];
        [_protocolLabel setText: @"登录或者注册即同意酷居用户服务协议"];
    }
    return _protocolLabel;
}

- (BaseButton *)submitButton{
    if(!_submitButton){
        _submitButton = [[BaseButton alloc] init];
        [_submitButton setButtonStyle: kBaseButton_BlueStyle];
        [_submitButton setTitle: @"提交" forState: UIControlStateNormal];
    }
    return _submitButton;
}


- (BaseButton *)phoneRegisterButton{
    if(!_phoneRegisterButton){
        _phoneRegisterButton = [[BaseButton alloc] init];
        [_phoneRegisterButton setButtonStyle: kBaseButton_AlphaStyle];
        [_phoneRegisterButton setTitle: @"手机号注册" forState: UIControlStateNormal];
    }
    return _phoneRegisterButton;
}


- (BaseButton *)existAccountButton{
    if(!_existAccountButton){
        _existAccountButton = [[BaseButton alloc] init];
        [_existAccountButton setButtonStyle: kBaseButton_AlphaStyle];
        [_existAccountButton setTitle: @"已有账户?" forState: UIControlStateNormal];
    }
    return _existAccountButton;
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
        
        //tip label
        [self addSubview: self.tipLabel];
        self.tipLabel.sd_layout
        .leftEqualToView(self.comfirmPasswordTextFiled)
        .topSpaceToView(self.comfirmPasswordTextFiled, 5.0f)
        .rightEqualToView(self.comfirmPasswordTextFiled)
        .autoHeightRatio(0);
        
        //protocol label
        [self addSubview: self.protocolLabel];
        self.protocolLabel.sd_layout
        .leftEqualToView(self.tipLabel)
        .rightEqualToView(self.tipLabel)
        .bottomSpaceToView(self, 4 * (5.0f + BUTTTON_HEIGHT))
        .autoHeightRatio(0);
        
        //submit button
        [self addSubview: self.submitButton];
        self.submitButton.sd_layout
        .leftEqualToView(self.protocolLabel)
        .rightEqualToView(self.protocolLabel)
        .topSpaceToView(self.protocolLabel, 5.0f)
        .heightIs(BUTTTON_HEIGHT);
        
        //phone register button
        [self addSubview: self.phoneRegisterButton];
        self.phoneRegisterButton.sd_layout
        .leftEqualToView(self.protocolLabel)
        .rightEqualToView(self.protocolLabel)
        .topSpaceToView(self.submitButton, 5.0f)
        .heightIs(BUTTTON_HEIGHT);
        
        //exist account button
        [self addSubview: self.existAccountButton];
        self.existAccountButton.sd_layout
        .leftEqualToView(self.protocolLabel)
        .rightEqualToView(self.protocolLabel)
        .topSpaceToView(self.phoneRegisterButton, 5.0f)
        .heightIs(BUTTTON_HEIGHT);
    }
    return self;
}

@end
