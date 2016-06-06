//
//  UIColor+AppConfigColor.h
//  Giivv
//
//  Created by Xiong, Zijun on 16/4/16.
//  Copyright © 2016 Youdar . All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (AppConfigColor)
/**
 *  background color
 *
 *  @return UIColor
 */
+(UIColor *)viewBackgroundColor;

/**
 *  theme color
 *
 *  @return UIColor
 */
+(UIColor *)themeColor;

/**
 *  The default line gray color
 *
 *  @return UIColor
 */
+(UIColor *)lineGrayColor;

/**
 *  The default font white
 *
 *  @return UIColor
 */
+(UIColor *)textWhiteColor;

/**
 *  The default font Black
 *
 *  @return UIColor
 */
+(UIColor *)textBlackColor;

/**
 *  The default font light Black
 *
 *  @return UIColor
 */
+(UIColor *)textLightBlackColor;

/**
 *  The default font gray
 *
 *  @return UIColor
 */
+(UIColor *)textGrayColor;

/**
 *  The default font light gray
 *
 *  @return UIColor
 */
+(UIColor *)textLightGrayColor;
@end
