//
//  UIThresh+UIScrollView.m
//  JTThresh
//
//  Created by lushitong on 2021/4/21.
//

#import "UIThresh+UIScrollView.h"

@implementation UIThresh (UIScrollView)

- (UIThresh * _Nonnull (^)(id _Nonnull))delegate {
    return ^UIThresh *(id delegate) {
        UIScrollView *scrollView = self.thresh_id;
        scrollView.delegate = delegate;
        return self;
    };
}

- (UIThresh * _Nonnull (^)(CGSize))contentSize {
    return ^UIThresh *(CGSize size) {
        UIScrollView *scrollView = self.thresh_id;
        scrollView.contentSize = size;
        return self;
    };
}

- (UIThresh * _Nonnull (^)(CGPoint, BOOL))contentOffset {
    return ^UIThresh *(CGPoint point_size, BOOL animated) {
        UIScrollView *scrollView = self.thresh_id;
        [scrollView setContentOffset:point_size animated:animated];
        return self;
    };
}

- (UIThresh * _Nonnull (^)(BOOL))adjustedContentInset {
    return ^UIThresh *(BOOL adjustedContentInset) {
        UIScrollView *scrollView = self.thresh_id;
        scrollView.adjustedContentInset = adjustedContentInset;
        return self;
    };
}

@end
