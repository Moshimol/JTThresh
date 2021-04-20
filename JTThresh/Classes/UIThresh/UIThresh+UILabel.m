//
//  UIThresh+UILabel.m
//  JTThresh
//
//  Created by lushitong on 2021/4/20.
//

#import "UIThresh+UILabel.h"

@implementation UIThresh (UILabel)

- (UIThresh * _Nonnull (^)(NSString * _Nonnull))text {
    return ^UIThresh *(NSString *text) {
        UILabel *label = (UILabel *)self.thresh_id;
        label.text = text;
        return self;
    };
}

- (UIThresh * _Nonnull (^)(NSAttributedString * _Nonnull))attributedText {
    return ^UIThresh *(NSAttributedString *attributedText) {
        UILabel *label = (UILabel *)self.thresh_id;
        label.attributedText = attributedText;
        return self;
    };
}

- (UIThresh * _Nonnull (^)(NSTextAlignment))textAlignment {
    return ^UIThresh *(NSTextAlignment textAlignment) {
        UILabel *label = (UILabel *)self.thresh_id;
        label.textAlignment = textAlignment;
        return self;
    };
}

- (UIThresh * _Nonnull (^)(NSInteger))numberOflines {
    return ^UIThresh *(NSInteger numberOfLines) {
        UILabel *label = (UILabel *)self.thresh_id;
        label.numberOfLines = numberOfLines;
        return self;
    };
}

- (UIThresh * _Nonnull (^)(NSLineBreakMode))lineBreakMode {
    return ^UIThresh *(NSLineBreakMode lineBreakMode) {
        UILabel *label = (UILabel *)self.thresh_id;
        label.lineBreakMode = lineBreakMode;
        return self;
    };
}

@end
