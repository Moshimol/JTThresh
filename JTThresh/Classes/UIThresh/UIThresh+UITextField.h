//
//  UIThresh+UITextField.h
//  JTThresh
//
//  Created by lushitong on 2021/4/20.
//

#import <JTThresh/JTThresh.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIThresh (UITextField)

//设置文字
@property (nonatomic, copy, readonly) UIThresh *(^text)(NSString *text);

//设置文字颜色
@property (nonatomic, copy, readonly) UIThresh *(^textColor)(UIColor *textColor);

//设置富文本
@property (nonatomic, copy, readonly) UIThresh *(^attributedText)(NSAttributedString *attributedText);

// placeholder
@property (nonatomic, copy, readonly) UIThresh *(^placeholder)(NSString *placeholder);

// 富文本的placeholder
@property (nonatomic, copy, readonly) UIThresh *(^attributedPlaceholder)(NSString *attributedPlaceholder);

// 设置代理
@property (nonatomic, copy, readonly) UIThresh *(^delegate)(id<UITextFieldDelegate> delegate);

@end

NS_ASSUME_NONNULL_END
