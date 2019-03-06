//
//  UIView+Extension.m
//  HuaDian
//
//  Created by cb_2018 on 2019/3/1.
//  Copyright © 2019 91cb. All rights reserved.
//

#import "UIView+Extension.h"
#import "UIImage+SQExtension.h"
@implementation UIView (SQExtension)

//设置Uiview的背景为图片

- (void)sq_setBGImageWithName:(NSString *)imageName{
    
    UIImage *imageFullScall = [UIImage imageWithName:imageName OriginImageScaleToSize:self.frame.size];
    
    self.backgroundColor = [UIColor colorWithPatternImage:imageFullScall];
    
}

@end
