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
        [self addTarget: self action: @selector(buttonTouchDown) forControlEvents: UIControlEventTouchDown];
    }
    return self;
}

- (void)buttonTouchDown{
//    [self setBackgroundColor: [self.backgroundColor setStroke]];
}
@end
