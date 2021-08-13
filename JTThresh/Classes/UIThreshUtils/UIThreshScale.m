//
//  UIThreshScale.m
//  JTThresh
//
//  Created by lushitong on 2021/6/25.
//

#import "UIThreshScale.h"

#define kScreenHeight [[UIScreen mainScreen] bounds].size.height
#define kScreenWidth [[UIScreen mainScreen] bounds].size.width


CG_INLINE CGRect
TS_CGRectMake(CGRect normFrame, CGFloat autoSizeScaleX, CGFloat autoSizeScaleY)
{
    CGRect rect;
    rect.origin.x = normFrame.origin.x * autoSizeScaleX;
    rect.origin.y = normFrame.origin.y *autoSizeScaleY;
    rect.size.width = normFrame.size.width * autoSizeScaleX;
    rect.size.height = normFrame.size.height * autoSizeScaleY;
    return rect;
}

@implementation UIThreshScale

+ (CGRect)tranFrameScale:(CGRect)normFrame {
    if (kScreenWidth < 480.0) {
        return normFrame;
    }
    // 计算屏幕尺寸
    return TS_CGRectMake(normFrame, [UIThreshScale getCurrentWidthScale], [UIThreshScale getCurrentheightScale]);
}


// 获取当前屏幕宽高比
+ (CGFloat)getCurrentWidthScale {
    return kScreenWidth/320.0;
}

+ (CGFloat)getCurrentheightScale {
    return kScreenHeight/568.0;
}

@end
