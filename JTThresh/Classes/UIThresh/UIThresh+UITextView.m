//
//  UIThresh+UITextView.m
//  JTThresh
//
//  Created by lushitong on 2021/4/20.
//

#import "UIThresh+UITextView.h"

@implementation UIThresh (UITextView)

- (UIThresh * _Nonnull (^)(id<UITextViewDelegate> _Nonnull))delegate {
    return ^UIThresh *(id<UITextViewDelegate> delegate) {
        UITextView *textView = (UITextView *)self.thresh_id;
        [textView setDelegate:delegate];
        return self;
    };
}

- (UIThresh * _Nonnull (^)(NSString * _Nonnull))text {
    return ^UIThresh *(NSString *text) {
        UITextView *textView = (UITextView *)self.thresh_id;
        textView.text = text;
        return self;
    };
}

- (UIThresh * _Nonnull (^)(UIFont * _Nonnull))font {
    return ^UIThresh *(NSString *text) {
        UITextView *textView = (UITextView *)self.thresh_id;
        textView.text = text;
        return self;
    };
}

- (UIThresh * _Nonnull (^)(UIColor * _Nonnull))textColor {
    return ^UIThresh *(UIColor *textColor) {
        UITextView *textView = (UITextView *)self.thresh_id;
        textView.textColor = textColor;
        return self;
    };
}

- (UIThresh * _Nonnull (^)(NSTextAlignment))textAlignment {
    return ^UIThresh *(NSTextAlignment textAlignment) {
        UITextView *textView = (UITextView *)self.thresh_id;
        textView.textAlignment = textAlignment;
        return self;
    };
}

@end
