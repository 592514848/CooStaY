//
//  BaseTextField.m
//  THJ
//
//  Created by Xiong, Zijun on 4/12/16.
//  Copyright © 2016 Youdar. All rights reserved.
//
#define LEFT_PADDING 10.0F
#define TEXTGRAYCOLOR HEX_RGB(0xf0f0f0)

#import "BaseTextField.h"

@interface BaseTextField() <UITextFieldDelegate>
@property(nonatomic, strong) BaseTextFieldObject *textFieldObject;
@property(nonatomic, strong) UIView *lineView;
@end

@implementation BaseTextField
#pragma mark - getteres and setters
- (UIView *)leftPaddingView{
    if(!_leftPaddingView){
        _leftPaddingView = [[UIView alloc] init];
    }
    return _leftPaddingView;
}

- (BaseTextFieldObject *)textFieldObject{
    if(!_textFieldObject){
        _textFieldObject = [[BaseTextFieldObject alloc] init];
    }
    return _textFieldObject;
}

- (UIView *)lineView{
    if(!_lineView){
        _lineView = [[UIView alloc] init];
    }
    return _lineView;
}

- (void)setBaseDelegate:(id<BaseTextFieldObject_Delegate>)baseDelegate{
    _baseDelegate = baseDelegate;
    [self.textFieldObject setDelegate: baseDelegate];
}

#pragma mark - init
- (id)init
{
    self = [super init];
    if (self) {
        [self setUp];
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setUp];
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame style:(BaseTextField_Style) style
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setUp];
        [self setStyle: style];
    }
    return self;
}

#pragma mark common attribtte setting
- (void)setUp
{
    /**
     *  delegate
     */
    [self setDelegate: self.textFieldObject];
    /**
     *  default setting
     */
    self.cornerRadius = 3.0f;
    self.borderWidth = 0.5f;
    /**
     *  default attribute
     */
    [self setBackgroundColor: [UIColor clearColor]];
    [self setTextColor: TEXTGRAYCOLOR];
    [self setFont: [UIFont systemFontOfSize: 15.0f]];
    [self setContentVerticalAlignment: UIControlContentVerticalAlignmentCenter];
    [self setReturnKeyType: UIReturnKeyDone];
    /**
     *  leftView
     */
    [self setLeftViewMode: UITextFieldViewModeAlways];
    [self setLeftView: self.leftPaddingView];
}

#pragma mark the text box style
- (void)setStyle:(BaseTextField_Style)style{
    _style = style;
    switch (style) {
        case 1:{
            [self setTintColor: TEXTGRAYCOLOR];
            [self.layer setCornerRadius: self.cornerRadius];
            [self.layer setBorderColor: TEXTGRAYCOLOR.CGColor];
            [self.layer setBorderWidth: self.borderWidth];
            break;
        }
        case 2:{
            CGRect frame = self.leftPaddingView.frame;
            frame.size.width = 2.0f;
            [self.leftPaddingView setFrame: frame];
            
            [self setTintColor: [UIColor themeColor]];
            break;
        }
        default:{
            [self setTextColor: [UIColor whiteColor]];
            [self setTintColor: [UIColor whiteColor]];
            break;
        }
    }
}

#pragma mark - public methods
- (void)setTextFiledRequest:(BOOL) isRequest{
    CGRect frame = self.leftPaddingView.frame;
    frame.size.height = self.frame.size.height;
}


- (void)drawRect:(CGRect)rect{
    [self.leftPaddingView setFrame: CGRectMake(0.0f, 0.0f, rect.size.height, rect.size.height)];
    switch (self.style) {
        case 2:{
            [self.lineView setFrame: CGRectMake(0.0f, self.frame.size.height - 0.5f, self.frame.size.height, 0.5f)];
            [self.lineView setBackgroundColor: [UIColor themeColor]];
            [self addSubview: self.lineView];
            break;
        }
        default:
            break;
    }
}
@end

/**
 *  BaseTextFieldObject run delegate
 */
@implementation BaseTextFieldObject
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    [BASEAPPLICATION setCurrentFirstResponser: textField];
}

- (void)textFieldDidEndEditing:(UITextField *)textField{
    [textField resignFirstResponder];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    if([_delegate respondsToSelector: @selector(baseTextFieldShouldReturn:)]){
        return [_delegate baseTextFieldShouldReturn: textField];
    }
    return YES;
}
@end
