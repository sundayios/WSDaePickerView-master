//
//  UIButton+Alpha.m
//  Huadian
//
//  Created by cb_2018 on 2019/2/27.
//  Copyright © 2019 91cb. All rights reserved.
//

#import "UIButton+Alpha.h"

@implementation UIButton (Alpha)

+ (UIButton *)cb_buttonWith:(UIButtonType)buttonType{
    UIButton *button = [self buttonWithType:buttonType];
    [button.titleLabel setFont: Font_Nav_Item];
    return button;
}
- (void)cbSet_Enable:(BOOL)isEnable{
    if (isEnable) {
        self.enabled = YES;
        self.alpha = 1;
    }else{
        self.enabled = NO;
        self.alpha = 0.4;
    }
}

@end
