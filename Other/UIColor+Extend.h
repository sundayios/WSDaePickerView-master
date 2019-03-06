//
//  UIColor+Extend.h
//  categoryKitDemo
//
//  Created by zhanghao on 2016/7/23.
//  Copyright © 2016年 zhanghao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Extend)

+ (UIColor *)randomColor;
+ (UIColor *)r:(uint8_t)r g:(uint8_t)g b:(uint8_t)b alphaComponent:(CGFloat)alpha;
+ (UIColor *)r:(uint8_t)r g:(uint8_t)g b:(uint8_t)b;
+ (UIColor *)r:(uint8_t)r g:(uint8_t)g b:(uint8_t)b a:(uint8_t)a;
+ (UIColor *)rgba:(NSUInteger)rgba;
+ (UIColor *)colorWithHexString:(NSString*)hexString;

- (NSUInteger)rgbaValue;

@end
