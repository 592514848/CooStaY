//
//  UIImage+ExFoundation.h
//  Giivv
//
//  Created by Xiong, Zijun on 16/4/16.
//  Copyright © 2016 Youdar . All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (ExFoundation)

+ (UIImage *)imageWithColor:(UIColor *)color;

- (NSData *)compressedImgLess12M:(UIImage*)image;

-(UIImage*)adjustImageWithScaleToSize:(CGSize)size;
@end
