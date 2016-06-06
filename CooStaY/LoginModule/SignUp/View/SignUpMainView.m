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
        [_titleLabel setFont: [UIFont systemFontOfSize: 24.0f]];
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
        ;
        [_emailTextField setBackgroundColor: HEX_RGB_Alpha(0x3c5b98,0.5f)];
        [_emailTextField.layer setBorderWidth: 1.0f];
    }
    return _emailTextField;
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
    }
    return self;
}

@end
