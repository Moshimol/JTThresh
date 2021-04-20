//
//  UIThresh+UITableView.h
//  JTThresh
//
//  Created by lushitong on 2021/4/20.
//

#import <JTThresh/JTThresh.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIThresh (UITableView)

// 设置代理
@property (nonatomic, copy, readonly) UIThresh *(^delegate)(id delegate,id dataSource);

// 是否隐藏分割线
@property (nonatomic, copy, readonly) UIThresh *(^hidedividerline)(BOOL hidedividerline);

// 是否开启预估高度
@property (nonatomic, copy, readonly) UIThresh *(^estimate_height)(BOOL estimate_height);

// 设置行高
@property (nonatomic, copy, readonly) UIThresh *(^rowHeight)(CGFloat rowHeight);

// 设置组头高度
@property (nonatomic, copy, readonly) UIThresh *(^sectionHeaderHeight)(CGFloat sectionHeaderHeight);

// 设置底部高度
@property (nonatomic, copy, readonly) UIThresh *(^sectionFooterHeight)(CGFloat sectionFooterHeight);


@end

NS_ASSUME_NONNULL_END
