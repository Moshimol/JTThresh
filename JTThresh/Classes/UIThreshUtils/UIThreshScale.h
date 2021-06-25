//
//  UIThreshScale.h
//  JTThresh
//
//  Created by lushitong on 2021/6/25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIThreshScale : NSObject

// 给出一个frame 返回对应尺寸屏幕(当前屏幕)
+ (CGRect)tranFrameScale:(CGRect)normFrame;

@end

NS_ASSUME_NONNULL_END
