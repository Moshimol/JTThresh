//
//  UIThresh.h
//  JTThresh
//
//  Created by lushitong on 2021/4/19.
//

#import <Foundation/Foundation.h>
#import "UIThreshMacro.h"
#import "UIView+Thresh.h"

NS_ASSUME_NONNULL_BEGIN

#define Thresh(source)  [UIThresh makeThreshGenerator:(source)]

@interface UIThresh : NSObject

- (id)mas_thresh:(void(^)(UIThresh *thresh))thresh;

+ (instancetype)makeThreshGenerator:(NSString *)sourece;

// 根据映射去对应iOS的空间
+ (NSString *)mapping_iOSKit:(NSString *)iOSKit;

@property (nonatomic, strong) UIThresh *thresh_id;

// 视图相关的属性
@property (nonatomic, copy, readonly) UIThresh *(^frame)(CGRect frame);

// 设置父组件
@property (nonatomic, copy, readonly) UIThresh *(^parent_view)(UIView *parent_view);

// 是否开启交互
@property (nonatomic, copy, readonly) UIThresh *(^userInteractionEnabled)(BOOL userInteractionEnabled);

// 背景颜色
@property (nonatomic, copy, readonly) UIThresh *(^backGroundColor)(UIColor *backGroudColor);

// 设置弧度 四个弧度
@property (nonatomic, copy, readonly) UIThresh *(^radius)(CGFloat radius);

// 单独设置弧度
@property (nonatomic, copy, readonly) UIThresh *(^radiusCorners)(CGFloat radius, UIRectCorner roundCorners);

// 设置tag值
@property (nonatomic, copy, readonly) UIThresh *(^tag)(NSInteger tag);

// 给View 添加事件
@property (nonatomic, copy, readonly) UIThresh *(^tapGestureRecognizer)(ThreshViewTapClick tapClick);

// 设置字体
@property (nonatomic, copy, readonly) UIThresh *(^font)(UIFont *font);

// 设置字体和颜色
@property (nonatomic, copy, readonly) UIThresh *(^fontName)(NSString *fontName, CGFloat fontSize);

@end

NS_ASSUME_NONNULL_END
