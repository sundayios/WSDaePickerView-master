//
//  UIImage+SQExtension.m
//  HuaDian
//
//  Created by cb_2018 on 2019/3/1.
//  Copyright © 2019 91cb. All rights reserved.
//

#import "UIImage+SQExtension.h"

@implementation UIImage (SQExtension)

//ios 改变图片大小缩放方法：

+ (UIImage*)imageWithName:(NSString *)imageName OriginImageScaleToSize:(CGSize)size; {
    
    UIImage *originImage = [self imageWithName:imageName imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    return [originImage originImageScaleToSize:size];
    
    
    
}

- (UIImage*)originImageScaleToSize:(CGSize)size

{
    
    UIGraphicsBeginImageContext(size);  //size 为CGSize类型，即你所需要的图片尺寸
    
    
    
    [self drawInRect:CGRectMake(0, 0, size.width, size.height)];
    
    
    
    UIImage* scaledImage = UIGraphicsGetImageFromCurrentImageContext();
    
    
    
    UIGraphicsEndImageContext();
    
    return scaledImage;   //返回的就是已经改变的图片
    
}



+ (UIImage *)imageWithName:(NSString *)imageName imageWithRenderingMode:(UIImageRenderingMode)imageRenderingMode {
    
    UIImage *image = [UIImage imageNamed:imageName];
    
    image = [image imageWithRenderingMode:imageRenderingMode];
    
    return image;
    
}

@end
