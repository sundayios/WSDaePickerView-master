//
//  UIImage+CBImage.m
//  HuaDian
//
//  Created by cb_2018 on 2019/1/4.
//  Copyright © 2019 91cb. All rights reserved.
//

#import "UIImage+Color.h"
@implementation UIImage (Color)

//一像素的方形
+ (UIImage *)cb_ImageRectWithColor:(UIColor *) color
{
    CGRect rect = CGRectMake(0.0f,0.0f,1.0f,1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context =UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, color.CGColor);
    CGContextFillRect(context, rect);
    UIImage *myImage =UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return myImage;
}
//圆形的
+ (UIImage *)cb_ImageRoundWithColor:(UIColor *)color size:(CGSize)size radius:(CGFloat)radius{
    CGRect rect = CGRectMake(0.0f, 0.0f, size.width, size.height);
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, [UIScreen mainScreen].scale);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:rect cornerRadius:radius];
    CGContextAddPath(context, path.CGPath);
    CGContextFillPath(context);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}
//圆形带边框
+ (UIImage *)cb_ImageRoundWithSize:(CGFloat)size fillColor:(UIColor *)fillColor borderWith:(CGFloat)borderWidth borderColor:(UIColor *)borderColor{
    
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    
    CGContextRef context = CGBitmapContextCreate(nil,size,size,8,0, colorSpace,kCGImageAlphaPremultipliedLast);
    
    CFRelease(colorSpace);
    CGContextBeginPath(context);
    
    CGColorRef strokeCGColor = borderColor.CGColor;
    CGContextSetFillColor(context, CGColorGetComponents(strokeCGColor));
    
    CGContextAddArc(context, size/2.0, size/2.0, size/2.0, 0, 2 * M_PI, 1);
    CGContextFillPath(context);
    
    CGColorRef fillCGColor = fillColor.CGColor;
    CGContextSetFillColor(context, CGColorGetComponents(fillCGColor));
    
    CGContextAddArc(context, size/2.0, size/2.0, size/2.0 - 1, 0, 2 * M_PI, 1);
    
    //    　　CGContextClosePath(context);
    
    CGContextFillPath(context);
    
    CGImageRef image = CGBitmapContextCreateImage(context);
    
    CGContextRelease(context);
    
    UIImage* image2 = [UIImage imageWithCGImage:image];
    return image2;
}
//把图片处理成圆形 不带边颜色
+ (UIImage*)cb_ImageRoundImage:(UIImage *)oldImage{
    
    UIGraphicsBeginImageContextWithOptions(oldImage.size, NO, 0);
    CGFloat fwidth = oldImage.size.width;
    CGFloat fheight = oldImage.size.height;
    
    CGFloat radio = fwidth > fheight ? fheight : fwidth;
    //    UIBezierPath * path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, oldImage.size.width, oldImage.size.height)];
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(fwidth/2.0, fheight/2.0) radius:radio/2.0 - 2 startAngle:0 endAngle:2 * M_PI clockwise:YES];
    
    [path addClip];
    
    [oldImage drawAtPoint:CGPointZero];
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    return image;
}
+ (UIImage*)cb_circleRoundImage:(NSString *)name{
    
    UIImage *oldImage = [UIImage imageNamed:name];
    return [self cb_ImageRoundImage:oldImage];
}
/**
 *  将image转换为圆型带边框的图片（最好写一个UIImage的类扩展）
 *
 *  @param name        图片的名字
 *  @param borderWidth 外层边框的宽度
 *  @param borderColor 外层边框的颜色
 *
 *  @return 返回已经处理好的圆形图片
 */
+ (UIImage *)cb_circleImageWithName:(NSString *)name borderWidth:(CGFloat)borderWidth borderColor:(UIColor *)borderColor
{
    // 1.加载原图
    UIImage *oldImage = [UIImage imageNamed:name];
    
    return [self cb_circleImageWithImage:oldImage borderWidth:borderWidth borderColor:borderColor];
}
+ (UIImage *)cb_circleImageWithImage:(UIImage *)oldImage borderWidth:(CGFloat)borderWidth borderColor:(UIColor *)borderColor{
    
    // 2.开启上下文
    CGFloat imageW = oldImage.size.width + 2 * borderWidth;
    CGFloat imageH = oldImage.size.height + 2 * borderWidth;
    CGSize imageSize = CGSizeMake(imageW, imageH);
    UIGraphicsBeginImageContextWithOptions(imageSize, NO, 0.0);
    
    // 3.取得当前的上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    // 4.画边框(大圆)
    [borderColor set];
    CGFloat diameter = imageW > imageH ? imageH : imageW;
    CGFloat bigRadius = diameter * 0.5; // 大圆半径
    CGFloat centerX = bigRadius; // 圆心
    CGFloat centerY = bigRadius;
    CGContextAddArc(ctx, centerX, centerY, bigRadius, 0, M_PI * 2, 0);
    CGContextFillPath(ctx); // 画圆
    
    // 5.小圆
    CGFloat smallRadius = bigRadius - borderWidth;
    CGContextAddArc(ctx, centerX, centerY, smallRadius, 0, M_PI * 2, 0);
    // 裁剪(后面画的东西才会受裁剪的影响)
    CGContextClip(ctx);
    
    // 6.画图
    [oldImage drawInRect:CGRectMake(borderWidth, borderWidth, oldImage.size.width, oldImage.size.height)];
    
    // 7.取图
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    
    // 8.结束上下文
    UIGraphicsEndImageContext();
    
    return newImage;
}
@end
