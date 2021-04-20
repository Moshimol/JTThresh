//
//  UIThresh+UIButton.m
//  JTThresh
//
//  Created by lushitong on 2021/4/19.
//

#import "UIThresh+UIButton.h"
#import <objc/runtime.h>

@implementation UIButton (UIThresSupport)

- (void)thresh_support:(clickBlock)block events:(UIControlEvents)events {
    objc_setAssociatedObject(self, @selector(clickButtonAction:), block, OBJC_ASSOCIATION_COPY_NONATOMIC);
    [self addTarget:self action:@selector(clickButtonAction:) forControlEvents:events];
    
}

- (void)clickButtonAction:(UIButton *)button {
    clickBlock block = objc_getAssociatedObject(self, _cmd);
    if (block) {
        block();
    }
}

@end


@implementation UIThresh (UIButton)

- (UIThresh * _Nonnull (^)(NSString * _Nonnull, UIControlState))state {
    return ^UIThresh *(NSString *title,UIControlState state) {
        UIButton *button = (UIButton *) self.thresh_id;
        [button setTitle:title forState:state];
        return self;
    };
}

- (UIThresh * _Nonnull (^)(UIColor * _Nonnull, UIControlState))titleColorState{
    return ^UIThresh *(UIColor *titleColor,UIControlState state){
        UIButton *button = (UIButton *) self.thresh_id;
        [button setTitleColor:titleColor forState:state];
        return self;
    };
}

- (UIThresh * _Nonnull (^)(clickBlock _Nonnull, UIControlEvents))clickBlock {
    return ^UIThresh *(clickBlock block, UIControlEvents events) {
        if (block) {
            UIButton *button = (UIButton *) self.thresh_id;
            [button thresh_support:block events:events];
        }
        return self;
    };
}

- (UIThresh * _Nonnull (^)(UIImage * _Nonnull, UIControlState))image {
    return ^UIThresh *(UIImage *image, UIControlState state) {
        UIButton *button = (UIButton *) self.thresh_id;
        [button setImage:image forState:state];
        return self;
    };
}

- (UIThresh * _Nonnull (^)(UIImage * _Nonnull, UIControlState))backGroundImage {
    return ^UIThresh *(UIImage *backGroundImage, UIControlState state) {
        UIButton *button = (UIButton *) self.thresh_id;
        [button setBackgroundImage:backGroundImage forState:state];
        return self;
    };
}

@end
