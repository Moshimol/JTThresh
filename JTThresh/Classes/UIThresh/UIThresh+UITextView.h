//
//  UIThresh+UITextView.h
//  JTThresh
//
//  Created by lushitong on 2021/4/20.
//

#import <JTThresh/JTThresh.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIThresh (UITextView)

@property (nonatomic, copy, readonly) UIThresh *(^delegate)(id<UITextViewDelegate> delegate);
@property (nonatomic, copy, readonly) UIThresh *(^text)(NSString * text);
@property (nonatomic, copy, readonly) UIThresh *(^font)(UIFont * font);
@property (nonatomic, copy, readonly) UIThresh *(^textColor)(UIColor * textColor);
@property (nonatomic, copy, readonly) UIThresh *(^textAlignment)(NSTextAlignment textAlignment);

@end

NS_ASSUME_NONNULL_END
