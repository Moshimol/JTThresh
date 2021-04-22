//
//  UIView+Thresh.m
//  JTThresh
//
//  Created by lushitong on 2021/4/19.
//

#import "UIView+Thresh.h"
#import <objc/runtime.h>

@implementation UIView (Thresh)

- (void)mas_threskTapGestureRecognizer:(ThreshViewTapClick)block {
    self.userInteractionEnabled = YES;
    SEL threshSel = @selector(mas_threshHandleAction:);
    UITapGestureRecognizer *gesture = objc_getAssociatedObject(self, threshSel);
    if (!gesture){
        gesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:threshSel];
        [self addGestureRecognizer:gesture];
        objc_setAssociatedObject(self, threshSel, gesture, OBJC_ASSOCIATION_RETAIN);
    }
    objc_setAssociatedObject(self, threshSel, block, OBJC_ASSOCIATION_COPY);
}

- (void)mas_threshHandleAction:(UITapGestureRecognizer*)gesture {
    if (gesture.state == UIGestureRecognizerStateRecognized) {
        ThreshViewTapClick block = objc_getAssociatedObject(self, _cmd);
        if (block) {
            block();
        }
    }
}

@end
