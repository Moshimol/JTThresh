//
//  UIThresh.m
//  JTThresh
//
//  Created by lushitong on 2021/4/19.
//

#import "UIThresh.h"
#import <objc/runtime.h>

@implementation UIThresh

- (id)mas_thresh:(void (^)(UIThresh * _Nonnull))thresh {
    UIThresh * thresher = self;
    if (!thresher) {
        return nil;
    }
    if (thresh) {
        thresh(thresher);
    }
    return self.thresh_id;
}

+ (instancetype)makeThreshGenerator:(NSString *)sourece {
 
    const char *className = [sourece cStringUsingEncoding:NSASCIIStringEncoding];
    Class cls = objc_getClass(className);
    UIThresh *thresh = [[UIThresh alloc] init];
    
    // 对于collectView |  tableView | 不适用于 alloc init 方法
    // 而 tableView和collectView 采用另外的初始化方式详情请见ReadMe,这里暂时为了防止出错
    if ([cls isSubclassOfClass:[UICollectionView class]]) {
        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
        thresh.thresh_id = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:layout];
    } else if ([cls isSubclassOfClass:[UITableView class]]) {
        thresh.thresh_id = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
    } else if ([cls isSubclassOfClass:[UIView class]]) {
        thresh.thresh_id = [[cls alloc] init];
    }
    return thresh;
}

- (UIThresh * _Nonnull (^)(CGRect))frame {
    return ^UIThresh *(CGRect frame) {
        UIView *result = (UIView *)self.thresh_id;
        result.frame = frame;
        return self;
    };
}

- (UIThresh * _Nonnull (^)(UIView * _Nonnull))parent_view {
    return ^UIThresh *(UIView *parent_view) {
        if (parent_view) {
            if (parent_view) {
                [parent_view addSubview:(UIView *)self.thresh_id];
            }
        }
        return self;
    };
}

- (UIThresh * _Nonnull (^)(BOOL))userInteractionEnabled {
    return ^UIThresh *(BOOL userInteractionEnabled) {
        UIView *result = (UIView *)self.thresh_id;
        result.userInteractionEnabled = userInteractionEnabled;
        return self;
    };
}

- (UIThresh * _Nonnull (^)(UIColor * _Nonnull))backGroundColor {
    return ^UIThresh *(UIColor *backGroundColor) {
        UIView *result = (UIView *)self.thresh_id;
        result.backgroundColor = backGroundColor;
        return self;
    };
}

- (UIThresh * _Nonnull (^)(CGSize))radius {
    return ^UIThresh *(CGSize radius) {
        UIView *result = (UIView *)self.thresh_id;
        UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:result.bounds
        byRoundingCorners:UIRectCornerTopLeft | UIRectCornerTopRight | UIRectCornerBottomLeft | UIRectCornerBottomRight cornerRadii:radius];
        CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
        maskLayer.frame = result.bounds;
        maskLayer.path = maskPath.CGPath;
        result.layer.mask= maskLayer;
        return self;
    };
}

- (UIThresh * _Nonnull (^)(CGSize, UIRectCorner))radiusCorners {
    return ^UIThresh *(CGSize radius, UIRectCorner roundCorners) {
        UIView *result = (UIView *)self.thresh_id;
        UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:result.bounds
        byRoundingCorners:roundCorners cornerRadii:radius];
        CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
        maskLayer.frame = result.bounds;
        maskLayer.path = maskPath.CGPath;
        result.layer.mask= maskLayer;
        return self;
    };
}

- (UIThresh * _Nonnull (^)(NSInteger))tag {
    return ^UIThresh *(NSInteger tag) {
        UIView *result = (UIView *)self.thresh_id;
        result.tag = tag;
        return self;
    };
}

- (UIThresh * _Nonnull (^)(ThreshViewTapClick _Nonnull))tapGestureRecognizer {
    return ^UIThresh *(ThreshViewTapClick tapClick) {
        UIView *result = (UIView *)self.thresh_id;
        [result mas_threskTapGestureRecognizer:tapClick];
        return self;
    };
}

- (UIThresh * _Nonnull (^)(UIFont * _Nonnull))font {
    return ^UIThresh *(UIFont *font) {
        if ([self.thresh_id isKindOfClass:[UILabel class]]) {
            UILabel *label = (UILabel *)self.thresh_id;
            label.font = font;
        } else if ([self.thresh_id isKindOfClass:[UIButton class]]) {
            UIButton *button = (UIButton *)self.thresh_id;
            button.titleLabel.font = font;
        } else if ([self.thresh_id isKindOfClass:[UITextField class]]) {
            UITextField *textFiled = (UITextField *)self.thresh_id;
            textFiled.font = font;
        } else if ([self.thresh_id isKindOfClass:[UITextView class]]) {
            UITextView *textView = (UITextView *)self.thresh_id;
            textView.font = font;
        }
        return self;
    };
}

- (UIThresh * _Nonnull (^)(NSString * _Nonnull, CGFloat))fontName {
    return ^UIThresh *(NSString *fontName, CGFloat fontSize) {
        if ([self.thresh_id isKindOfClass:[UILabel class]]) {
            UILabel *label = (UILabel *)self.thresh_id;
            label.font = [UIFont fontWithName:fontName size:fontSize];
        } else if ([self.thresh_id isKindOfClass:[UIButton class]]) {
            UIButton *button = (UIButton *)self.thresh_id;
            button.titleLabel.font = [UIFont fontWithName:fontName size:fontSize];
        } else if ([self.thresh_id isKindOfClass:[UITextField class]]) {
            UITextField *textFiled = (UITextField *)self.thresh_id;
            textFiled.font = [UIFont fontWithName:fontName size:fontSize];
        } else if ([self.thresh_id isKindOfClass:[UITextView class]]) {
            UITextView *textView = (UITextView *)self.thresh_id;
            textView.font = [UIFont fontWithName:fontName size:fontSize];
        }
        return self;
    };
}

@end