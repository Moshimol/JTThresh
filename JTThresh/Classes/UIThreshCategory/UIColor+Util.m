//
//  UIColor+Util.m
//  JTThresh
//
//  Created by lushitong on 2021/5/27.
//

#import "UIColor+Util.h"

@implementation UIColor (Util)

+ (UIColor *)colorFromHexAlphaString:(NSString *)hexString {
    hexString = [hexString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    if (hexString.length != 8) {
        if (hexString.length == 6) {
            hexString = [NSString stringWithFormat:@"FF%@",hexString];
        } else {
            return [UIColor blackColor];
        }
    }
    
    hexString = [hexString uppercaseString];
    NSString *alphaStr = [hexString substringToIndex:2];
    NSString *colorStr = [hexString substringFromIndex:2];
    
    NSInteger alphaValue = [UIColor valueFromHexString:alphaStr];
    NSInteger colorValue = [UIColor valueFromHexString:colorStr];
    
    return COLOR_WITH_HEX_A(colorValue, alphaValue);
}

+ (NSInteger)valueFromHexString:(NSString *)string {
    const char *hexChar = [string cStringUsingEncoding:NSUTF8StringEncoding];
    int hexNumber;
    sscanf(hexChar, "%x", &hexNumber);
    return (NSInteger)hexNumber;
}

+ (UIColor *)colorWithHexString:(NSString *)color {
    return [UIColor colorWithHexString:color alpha:1.0];
}

+ (UIColor *)colorWithHexString:(NSString *)color alpha:(CGFloat)alpha {
    // 删除字符串的空格
    NSString *colorString = [[color stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] uppercaseString];
    // 应该在6到8的字符串之间
    if (colorString.length < 6) {
        return [UIColor clearColor];
    }
    
    // 如果是0x 开头的，字符串索引为2的位置开始 一直到末尾
    if ([colorString hasPrefix:@"0X"]) {
        colorString = [colorString substringFromIndex:2];
    }
    
    // 如果是#开头，字符串索引为1的位置开始 一直到末尾
    if ([colorString hasPrefix:@"#"]) {
        colorString = [colorString substringFromIndex:1];
    }
    
    if (colorString.length != 6) {
        if (colorString.length == 8) {
            return [UIColor colorFromHexAlphaString:colorString];
        }
        return [UIColor clearColor];
    }
    
    // Separate into r, g, b substrings
    NSRange range;
    range.location = 0;
    range.length = 2;
    //r
    NSString *rString = [colorString substringWithRange:range];
    //g
    range.location = 2;
    NSString *gString = [colorString substringWithRange:range];
    //b
    range.location = 4;
    NSString *bString = [colorString substringWithRange:range];
    
    // Scan values
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    return [UIColor colorWithRed:((float)r / 255.0f) green:((float)g / 255.0f) blue:((float)b / 255.0f) alpha:alpha];
}

@end
