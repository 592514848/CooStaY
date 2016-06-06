//
//  UIColor+AppConfigColor.m
//  Giivv
//
//  Created by Xiong, Zijun on 16/4/16.
//  Copyright © 2016 Youdar . All rights reserved.
//

#import "UIColor+AppConfigColor.h"

@implementation UIColor (AppConfigColor)

#pragma mark - The default view background
+(UIColor *)viewBackgroundColor{
    return HEX_RGB(0xf5f6f7);
}


#pragma mark - theme color
+(UIColor *)themeColor{
    return HEX_RGB(0x00d79d);
}

#pragma mark - The default font black
+(UIColor *)textBlackColor{
    return HEX_RGB(0x4f5051);
}

#pragma mark - The default font light black
+(UIColor *)textLightBlackColor{
    return HEX_RGB(0x666666);
}

#pragma mark - The default font gray
+(UIColor *)textGrayColor{
    return HEX_RGB(0xa9a9a9);
}

#pragma mark - The default font light gray
+(UIColor *)textLightGrayColor{
    return HEX_RGB(0xafb0b1);
}

#pragma mark - 白色字体
+(UIColor *)textWhiteColor{
    return [[UIColor alloc] initWithWhite: 1.0f alpha: 0.6f];
}

#pragma mark - The default line gray color
+(UIColor *)lineGrayColor{
    return HEX_RGB(0xefefef);
}
@end
