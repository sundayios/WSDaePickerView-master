//
//  UIImage+SQExtension.h
//  HuaDian
//
//  Created by cb_2018 on 2019/3/1.
//  Copyright © 2019 91cb. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (SQExtension)

+ (UIImage*)imageWithName:(NSString *)imageName OriginImageScaleToSize:(CGSize)size;

- (UIImage*)originImageScaleToSize:(CGSize)size;

+ (UIImage *)imageWithName:(NSString *)imageName imageWithRenderingMode:(UIImageRenderingMode)imageRenderingMode;

@end

NS_ASSUME_NONNULL_END
