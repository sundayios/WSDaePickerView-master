//
//  UIImage+CBImage.h
//  HuaDian
//
//  Created by cb_2018 on 2019/1/4.
//  Copyright © 2019 91cb. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Color)

//一像素的方形
+ (UIImage *)cb_ImageRectWithColor:(UIColor *) color;
//圆形的
+ (UIImage *)cb_ImageRoundWithColor:(UIColor *)color size:(CGSize)size radius:(CGFloat)radius;
//圆形带边框
+ (UIImage *)cb_ImageRoundWithSize:(CGFloat)size fillColor:(UIColor *)fillColor borderWith:(CGFloat)borderWidth borderColor:(UIColor *)borderColor;

//把图片处理成圆形 不带边颜色
+ (UIImage*)cb_ImageRoundImage:(UIImage *)oldImage;
+ (UIImage*)cb_circleRoundImage:(NSString *)name;
/**
 *  将image转换为圆型带边框的图片（最好写一个UIImage的类扩展）
 *
 *  @param name        图片的名字
 *  @param borderWidth 外层边框的宽度
 *  @param borderColor 外层边框的颜色
 *
 *  @return 返回已经处理好的圆形图片
 */
+ (UIImage *)cb_circleImageWithName:(NSString *)name borderWidth:(CGFloat)borderWidth borderColor:(UIColor *)borderColor;
+ (UIImage *)cb_circleImageWithImage:(UIImage *)oldImage borderWidth:(CGFloat)borderWidth borderColor:(UIColor *)borderColor;
@end

NS_ASSUME_NONNULL_END
