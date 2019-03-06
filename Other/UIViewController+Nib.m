//
//  UIViewController+CBNib.m
//  HuaDian
//
//  Created by cb_2018 on 2018/12/20.
//  Copyright © 2018 91cb. All rights reserved.
//

#import "UIViewController+CBNib.h"

@implementation UIViewController (Nib)

+ (instancetype)loadFromNib {
    // [self class]会由调用的类决定
    return [[[self class] alloc] initWithNibName:NSStringFromClass([self class]) bundle:[NSBundle mainBundle]];
}
+ (instancetype)loadNibWithName:(NSString *)nibName{
    return [[NSClassFromString(nibName) alloc] initWithNibName:nibName bundle:[NSBundle mainBundle]];
}


@end
