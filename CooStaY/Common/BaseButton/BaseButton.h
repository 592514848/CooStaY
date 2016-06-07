//
//  BaseButton.h
//  CooStaY
//
//  Created by Xiong,Zijun on 16/6/2.
//  Copyright © 2016年 Youdar. All rights reserved.
//

typedef enum {
    kBaseButton_AlphaStyle = 0, //通明背景，白色边框，白色字体的按钮， 圆角
    kBaseButton_BlueStyle = 1 //蓝色背景，白色边框，白色字体的按钮， 圆角
}BaseButtonStyle;

#import <UIKit/UIKit.h>

@interface BaseButton : UIButton
@property(nonatomic, assign) BaseButtonStyle buttonStyle;
@end
