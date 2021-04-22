//
//  UIThresh+UICollectionView.m
//  JTThresh
//
//  Created by lushitong on 2021/4/20.
//

#import "UIThresh+UICollectionView.h"

@implementation UIThresh (UICollectionView)

- (UIThresh * _Nonnull (^)(id<UICollectionViewDelegate> _Nonnull, id<UICollectionViewDataSource> _Nonnull))collect_delegate {
    return ^UIThresh *(id delegate, id dataSource){
        UICollectionView *collectView = (UICollectionView *)self.thresh_id;
        collectView.delegate = delegate;
        collectView.dataSource = dataSource;
        return self;
    };
}

- (UIThresh * _Nonnull (^)(UICollectionViewLayout * _Nonnull))collectionViewLayout {
    return ^UIThresh *(UICollectionViewLayout *collectionViewLayout) {
        UICollectionView *collectView = (UICollectionView *)self.thresh_id;
        collectView.collectionViewLayout = collectionViewLayout;
        return self;
    };
}

- (UIThresh * _Nonnull (^)(id<UICollectionViewDataSourcePrefetching> _Nonnull))prefetchDataSource {
    return ^UIThresh *(id<UICollectionViewDataSourcePrefetching> prefetchDataSource) {
        UICollectionView *collectView = (UICollectionView *)self.thresh_id;
        if (@available(iOS 10.0, *)) {
            collectView.prefetchDataSource = prefetchDataSource;
        } else {
            // Fallback on earlier versions 目前暂不处理 因为目前支持只有iOS10以上
        }
        return self;
    };
}

- (UIThresh * _Nonnull (^)(BOOL))prefetchingEnabled {
    return ^UIThresh *(BOOL prefetchingEnabled) {
        UICollectionView *collectView = (UICollectionView *)self.thresh_id;
        collectView.prefetchingEnabled = prefetchingEnabled;
        return self;
    };
}

- (UIThresh * _Nonnull (^)(BOOL))dragInteractionEnabled {
    return ^UIThresh *(BOOL dragInteractionEnabled) {
        UICollectionView *collectView = (UICollectionView *)self.thresh_id;
        collectView.dragInteractionEnabled = dragInteractionEnabled;
        return self;
    };
}

- (UIThresh * _Nonnull (^)(UIView * _Nonnull))backgroundView {
    return ^UIThresh *(UIView *backgroundView) {
        UICollectionView *collectView = (UICollectionView *)self.thresh_id;
        collectView.backgroundView = backgroundView;
        return self;
    };
}

- (UIThresh * _Nonnull (^)(Class  _Nonnull __unsafe_unretained, NSString * _Nonnull))registerClassForCellWithReuseIdentifier {
    return ^UIThresh *(Class cellClass, NSString *identifier) {
        UICollectionView *collectView = (UICollectionView *)self.thresh_id;
        [collectView registerClass:cellClass forCellWithReuseIdentifier:identifier];
        return self;
    };
}

- (UIThresh * _Nonnull (^)(UINib * _Nonnull, NSString * _Nonnull))registerNibForCellWithReuseIdentifier {
    return ^UIThresh *(UINib *nib, NSString *identifier) {
        UICollectionView *collectView = (UICollectionView *)self.thresh_id;
        [collectView registerNib:nib forCellWithReuseIdentifier:identifier];
        return self;
    };
}

- (UIThresh * _Nonnull (^)(Class  _Nonnull __unsafe_unretained, NSString * _Nonnull, NSString * _Nonnull))registerClassForSupplementaryViewOfKindWithReuseIdentifier {
    return ^UIThresh *(Class viewClass, NSString *elementKind, NSString *identifier) {
        UICollectionView *collectView = (UICollectionView *)self.thresh_id;
        [collectView registerClass:viewClass forSupplementaryViewOfKind:elementKind withReuseIdentifier:identifier];
        return self;
    };
}

- (UIThresh * _Nonnull (^)(UINib * _Nonnull, NSString * _Nonnull, NSString * _Nonnull))registerNibForSupplementaryViewOfKindWithReuseIdentifier {
    return ^UIThresh *(UINib *nib, NSString *elementKind, NSString *identifier) {
        UICollectionView *collectionView = (UICollectionView *)self.thresh_id;
        [collectionView registerNib:nib
                  forSupplementaryViewOfKind:elementKind
                         withReuseIdentifier:identifier];
        return self;
    };
}

- (UIThresh * _Nonnull (^)(BOOL))allowsSelection {
    return ^UIThresh *(BOOL allowsSelection) {
        UICollectionView *collectionView = (UICollectionView *)self.thresh_id;
        collectionView.allowsSelection = allowsSelection;
        return self;
    };
}

- (UIThresh * _Nonnull (^)(BOOL))allowsMultipleSelection {
    return ^UIThresh *(BOOL allowsMultipleSelection) {
        UICollectionView *collectionView = (UICollectionView *)self.thresh_id;
        collectionView.allowsMultipleSelection = allowsMultipleSelection;
        return self;
    };
}

- (UIThresh * _Nonnull (^)(BOOL))showsVerticalScrollIndicator {
    return ^UIThresh *(BOOL showsVerticalScrollIndicator) {
        UICollectionView *collectionView = (UICollectionView *)self.thresh_id;
        collectionView.showsVerticalScrollIndicator = showsVerticalScrollIndicator;
        return self;
    };
}

- (UIThresh * _Nonnull (^)(BOOL))scrollEnabled {
    return ^UIThresh *(BOOL scrollEnabled) {
        UICollectionView *collectionView = (UICollectionView *)self.thresh_id;
        collectionView.scrollEnabled = scrollEnabled;
        return self;
    };
}

- (UIThresh * _Nonnull (^)(BOOL))delaysContentTouches {
    return ^UIThresh *(BOOL delaysContentTouches) {
        UICollectionView *collectionView = (UICollectionView *)self.thresh_id;
        collectionView.delaysContentTouches = delaysContentTouches;
        return self;
    };
}

- (UIThresh * _Nonnull (^)(id<UICollectionViewDragDelegate> _Nonnull))dragDelegate {
    return ^UIThresh *(id <UICollectionViewDragDelegate> dragDelegate) {
        UICollectionView *collectionView = (UICollectionView *)self.thresh_id;
        collectionView.dragDelegate = dragDelegate;
        return self;
    };
}

- (UIThresh * _Nonnull (^)(id<UICollectionViewDropDelegate> _Nonnull))dropDelegate {
    return ^UIThresh *(id <UICollectionViewDropDelegate> dropDelegate) {
        UICollectionView *collectionView = (UICollectionView *)self.thresh_id;
        collectionView.dropDelegate = dropDelegate;
        return self;
    };
}

- (UIThresh * _Nonnull (^)(UICollectionViewReorderingCadence))reorderingCadence {
    return ^UIThresh *(UICollectionViewReorderingCadence reorderingCadence) {
        UICollectionView *collectionView = (UICollectionView *)self.thresh_id;
        collectionView.reorderingCadence = reorderingCadence;
        return self;
    };
}
@end
