//
//  UIThresh+UIScrollView.h
//  JTThresh
//
//  Created by lushitong on 2021/4/21.
//

#import <JTThresh/JTThresh.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIThresh (UIScrollView)

// UIScrollView 的相关方法
// 代理方法
@property (nonatomic, copy, readonly) UIThresh *(^delegate)(id delegate);

// CGSize
@property (nonatomic, copy, readonly) UIThresh *(^contentSize)(CGSize size);

// contentSize
@property (nonatomic, copy, readonly) UIThresh *(^contentOffset)(CGPoint point_size, BOOL animated);

// adjustedContentInset
@property (nonatomic, copy, readonly) UIThresh *(^adjustedContentInset)(BOOL adjustedContentInset);

@end

NS_ASSUME_NONNULL_END
