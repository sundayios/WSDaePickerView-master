//
//  UIButton+Alpha.h
//  Huadian
//
//  Created by cb_2018 on 2019/2/27.
//  Copyright © 2019 91cb. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIButton (Alpha)

+ (UIButton *)cb_buttonWith:(UIButtonType)buttonType;
- (void)cbSet_Enable:(BOOL)isEnable;

@end

NS_ASSUME_NONNULL_END
