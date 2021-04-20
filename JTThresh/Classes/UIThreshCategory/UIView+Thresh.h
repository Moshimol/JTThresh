//
//  UIView+Thresh.h
//  JTThresh
//
//  Created by lushitong on 2021/4/19.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^ThreshViewTapClick)(void);

@interface UIView (Thresh)
- (void)mas_threskTapGestureRecognizer:(ThreshViewTapClick)block;

@end

NS_ASSUME_NONNULL_END
