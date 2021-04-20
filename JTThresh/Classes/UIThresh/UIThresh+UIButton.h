//
//  UIThresh+UIButton.h
//  JTThresh
//
//  Created by lushitong on 2021/4/19.
//

#import "UIThresh.h"

NS_ASSUME_NONNULL_BEGIN

typedef void(^clickBlock)(void);

@interface UIThresh (UIButton)

// 设置不同状态下的文字
@property (nonatomic, copy, readonly) UIThresh *(^state)(NSString *title, UIControlState state);
// 设置不同状态下的文字颜色
@property (nonatomic, copy, readonly) UIThresh *(^titleColorState)(UIColor *titleColor, UIControlState state);
// 设置button的点击事件
@property (nonatomic, copy, readonly) UIThresh *(^clickBlock)(clickBlock block, UIControlEvents event);
// 设置按钮图片
@property (nonatomic, copy, readonly) UIThresh *(^image)(UIImage *image, UIControlState state);
// 设置按钮背景图片
@property (nonatomic, copy, readonly) UIThresh *(^backGroundImage)(UIImage *backGroundImage, UIControlState state);

@end

@interface UIButton (UIThresSupport)


@end

NS_ASSUME_NONNULL_END
