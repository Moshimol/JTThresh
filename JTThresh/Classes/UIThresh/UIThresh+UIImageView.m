//
//  UIThresh+UIImageView.m
//  JTThresh
//
//  Created by lushitong on 2021/4/20.
//

#import "UIThresh+UIImageView.h"

@implementation UIThresh (UIImageView)

- (UIThresh * _Nonnull (^)(UIImage * _Nonnull))image {
    return ^UIThresh *(UIImage *image) {
        UIImageView *imageView = (UIImageView *)self.thresh_id;
        imageView.image = image;
        return self;
    };
}

- (UIThresh * _Nonnull (^)(NSString * _Nonnull))imageString {
    return ^UIThresh *(NSString *imageString) {
        UIImageView *imageView = (UIImageView *)self.thresh_id;
        imageView.image = [UIImage imageNamed:imageString];
        return self;
    };
}

- (UIThresh * _Nonnull (^)(NSString * _Nonnull))contentsOfFileString {
    return ^UIThresh *(NSString *contentsOfFileString) {
        UIImageView *imageView = (UIImageView *)self.thresh_id;
        imageView.image = [UIImage imageWithContentsOfFile:contentsOfFileString];
        return self;
    };
}

- (UIThresh * _Nonnull (^)(NSTimeInterval, NSInteger, NSArray<UIImage *> * _Nonnull))animation {
    return ^UIThresh *(NSTimeInterval animationDuration,NSInteger animationRepeatCount, NSArray<UIImage *> *animationImages) {
        UIImageView *imageView = (UIImageView *)self.thresh_id;
        imageView.animationImages = animationImages;
        imageView.animationRepeatCount = animationRepeatCount;
        imageView.animationDuration = animationDuration;
        return self;
    };
}

@end
