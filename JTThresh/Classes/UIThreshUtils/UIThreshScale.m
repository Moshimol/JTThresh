//
//  UIThreshScale.m
//  JTThresh
//
//  Created by lushitong on 2021/6/25.
//

#import "UIThreshScale.h"

@implementation UIThreshScale

+ (CGRect)tranFrameScale:(CGRect)normFrame {
    if (normFrame.size.width == 375.0) {
        return normFrame;
    }
    
    CGFloat currentScale = [UIThreshScale getCurrentScale];
    // 计算屏幕尺寸
    return CGRectMake(normFrame.origin.x * currentScale, normFrame.origin.y * currentScale, normFrame.size.width * currentScale, normFrame.size.height * currentScale);
}


// 获取当前屏幕宽高比
+ (CGFloat)getCurrentScale {
    return [UIScreen mainScreen].bounds.size.width / [UIScreen mainScreen].bounds.size.height;
}

@end
