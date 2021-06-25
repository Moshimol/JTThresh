//
//  UIColor+Util.h
//  JTThresh
//
//  Created by lushitong on 2021/5/27.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

#define COLOR_WITH_HEX_A(hexValue, a) ([UIColor colorWithRed:((float)((hexValue & 0xFF0000) >> 16))/255.0 green:((float)((hexValue & 0xFF00) >> 8))/255.0 blue:((float)(hexValue & 0xFF))/255.0 alpha:(a)])

@interface UIColor (Util)

// 带有alpha的
+ (UIColor *)colorFromHexAlphaString:(NSString *)hexString;

+ (UIColor *)colorWithHexString:(NSString *)color;

@end

NS_ASSUME_NONNULL_END
