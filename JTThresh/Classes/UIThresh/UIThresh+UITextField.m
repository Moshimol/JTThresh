//
//  UIThresh+UITextField.m
//  JTThresh
//
//  Created by lushitong on 2021/4/20.
//

#import "UIThresh+UITextField.h"

@implementation UIThresh (UITextField)

- (UIThresh * _Nonnull (^)(NSString * _Nonnull))text {
    return ^UIThresh *(NSString *text) {
        UITextField *field = (UITextField *)self.thresh_id;
        field.text = text;
        return self;
    };
}

- (UIThresh * _Nonnull (^)(UIColor * _Nonnull))textColor {
    return ^UIThresh *(UIColor *textColor) {
        UITextField *field = (UITextField *)self.thresh_id;
        field.textColor = textColor;
        return self;
    };
}

- (void)setAttributedText:(UIThresh * _Nonnull (^ _Nonnull)(NSAttributedString * _Nonnull))attributedText {
    return ^UIThresh *(NSAttributedString *attributedText) {
        UITextField *field = (UITextField *)self.thresh_id;
        field.attributedText = attributedText;
        return self;
    };
}

- (void)setPlaceholder:(UIThresh * _Nonnull (^ _Nonnull)(NSString * _Nonnull))placeholder {
    return ^UIThresh *(NSString *placeholder) {
        UITextField *field = (UITextField *)self.thresh_id;
        field.placeholder = placeholder;
        return self;
    }
}

- (UIThresh * _Nonnull (^)(id<UITextFieldDelegate> _Nonnull))delegate {
    return ^UIThresh *(id delegate) {
        UITextField *field = (UITextField *)self.thresh_id;
        field.delegate = delegate;
        return self;
    };
}

@end
