//
//  UIThresh+UICollectionView.h
//  JTThresh
//
//  Created by lushitong on 2021/4/20.
//

#import <JTThresh/JTThresh.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIThresh (UICollectionView)

// 设置collect的代理相关
@property (nonatomic, copy, readonly) UIThresh *(^collect_delegate)(id <UICollectionViewDelegate> delegate,id <UICollectionViewDataSource> dataSource);

//collectionViewLayout
@property (nonatomic, copy, readonly) UIThresh *(^collectionViewLayout)(UICollectionViewLayout *collectionViewLayout);

@property (nonatomic, copy, readonly) UIThresh *(^prefetchDataSource)(id<UICollectionViewDataSourcePrefetching> prefetchDataSource);

@property (nonatomic, copy, readonly) UIThresh *(^prefetchingEnabled)(BOOL prefetchingEnabled);

@property (nonatomic, copy, readonly) UIThresh *(^dragInteractionEnabled)(BOOL dragInteractionEnabled);

@property (nonatomic, copy, readonly) UIThresh *(^backgroundView)(UIView *backgroundView);

@property (nonatomic, copy, readonly) UIThresh *(^registerClassForCellWithReuseIdentifier)(Class cellClass, NSString *identifier);

@property (nonatomic, copy, readonly) UIThresh *(^registerNibForCellWithReuseIdentifier)(UINib *nib, NSString *identifier);

@property (nonatomic, copy, readonly) UIThresh *(^registerClassForSupplementaryViewOfKindWithReuseIdentifier)(Class viewClass, NSString *elementKind, NSString *identifier);

@property (nonatomic, copy, readonly) UIThresh *(^registerNibForSupplementaryViewOfKindWithReuseIdentifier)(UINib *nib, NSString *elementKind, NSString *identifier);

@property (nonatomic, copy, readonly) UIThresh *(^allowsSelection)(BOOL allowsSelection);

@property (nonatomic, copy, readonly) UIThresh *(^allowsMultipleSelection)(BOOL allowsMultipleSelection);

@property (nonatomic, copy, readonly) UIThresh *(^showsVerticalScrollIndicator)(BOOL showsVerticalScrollIndicator);

@property (nonatomic, copy, readonly) UIThresh *(^scrollEnabled)(BOOL scrollEnabled);

@property (nonatomic, copy, readonly) UIThresh *(^delaysContentTouches)(BOOL delaysContentTouches);

@property (nonatomic, copy, readonly) UIThresh *(^dragDelegate)(id <UICollectionViewDragDelegate> dragDelegate) API_AVAILABLE(ios(11.0));

@property (nonatomic, copy, readonly) UIThresh *(^dropDelegate)(id <UICollectionViewDropDelegate> dropDelegate) API_AVAILABLE(ios(11.0));

@property (nonatomic, copy, readonly) UIThresh *(^reorderingCadence)(UICollectionViewReorderingCadence reorderingCadence) API_AVAILABLE(ios(11.0));


@end

NS_ASSUME_NONNULL_END
