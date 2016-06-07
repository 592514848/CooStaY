//
//  BaseButton.m
//  CooStaY
//
//  Created by Xiong,Zijun on 16/6/2.
//  Copyright © 2016年 Youdar. All rights reserved.
//

#import "BaseButton.h"

@implementation BaseButton
- (instancetype) init{
    self = [super init];
    if(self){
        [self defaultSetting];
    }
    return self;
}

#pragma mark - 默认设置
- (void)defaultSetting{
    
}

#pragma mark - public methods
- (void)setButtonStyle:(BaseButtonStyle)buttonStyle{
    [self.layer setMasksToBounds: YES];
    switch (buttonStyle) {
        case 0: case 1:{
            [self.layer setCornerRadius: 5.0f];
            [self.layer setBorderColor: [UIColor textWhiteColor].CGColor];
            [self.titleLabel setFont: [UIFont systemFontOfSize: 15.0f]];
            [self setTitleColor: [UIColor textWhiteColor] forState: UIControlStateNormal];
            [self.layer setBorderWidth: 1.0f];
            if(buttonStyle == kBaseButton_AlphaStyle){
                [self setBackgroundColor: [UIColor clearColor]];
                [self setBackgroundImage: [UIImage imageWithColor: [UIColor textWhiteColor]] forState: UIControlStateHighlighted];
            }
            else{
                [self setBackgroundColor: HEX_RGB(0x50c9f4)];
                [self setBackgroundImage: [UIImage imageWithColor: HEX_RGB(0x2dbbe1)] forState: UIControlStateHighlighted];
            }
            break;
        }
        default:
            break;
    }
}
@end
