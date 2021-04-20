//
//  UIThresh+UIImageView.h
//  JTThresh
//
//  Created by lushitong on 2021/4/20.
//

#import <JTThresh/JTThresh.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIThresh (UIImageView)

// 设置image的对象
@property (nonatomic, copy, readonly) UIThresh *(^image)(UIImage *image);

// imageString 创建对象
@property (nonatomic, copy, readonly) UIThresh *(^imageString)(NSString *imageString);

// 文件相关
@property (nonatomic, copy, readonly) UIThresh *(^contentsOfFileString)(NSString *contentsOfFileString);

// 动画相关
@property (nonatomic, copy, readonly) UIThresh *(^animation)(NSTimeInterval animationDuration,NSInteger animationRepeatCount, NSArray<UIImage *> *animationImages);

@end

NS_ASSUME_NONNULL_END
