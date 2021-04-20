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
    
    SEL ThreshSel = @selector(mas_threskTapGestureRecognizer:);
    UITapGestureRecognizer *gesTap = objc_getAssociatedObject(self, ThreshSel);
    if (!gesTap) {
        gesTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:ThreshSel];
        [self addGestureRecognizer:gesTap];
        objc_setAssociatedObject(self, ThreshSel, block, OBJC_ASSOCIATION_COPY);
    }
    objc_setAssociatedObject(self, ThreshSel, block, OBJC_ASSOCIATION_COPY);
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
