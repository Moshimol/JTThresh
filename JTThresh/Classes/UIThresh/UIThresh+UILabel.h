//
//  UIThresh+UILabel.h
//  JTThresh
//
//  Created by lushitong on 2021/4/20.
//

#import <JTThresh/JTThresh.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIThresh (UILabel)

// 设置文字
@property (nonatomic, copy, readonly) UIThresh *(^text)(NSString *text);

// 设置富文本
@property (nonatomic, copy, readonly) UIThresh *(^attributedText)(NSAttributedString *attributedText);

// 设置文字颜色
@property (nonatomic, copy, readonly) UIThresh *(^textColor)(UIColor *textColor);

// 设置文本对齐
@property (nonatomic, copy, readonly) UIThresh *(^textAlignment)(NSTextAlignment textAlignment);

// 设置行数
@property (nonatomic, copy, readonly) UIThresh *(^numberOflines)(NSInteger numberOfLines);

// 设置截断设备
@property (nonatomic, copy, readonly) UIThresh *(^lineBreakMode)(NSLineBreakMode lineBreakMode);

@end

NS_ASSUME_NONNULL_END
