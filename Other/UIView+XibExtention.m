//
//  UIView+CBXibExtention.m
//  HuaDian
//
//  Created by cb_2018 on 2018/12/20.
//  Copyright © 2018 91cb. All rights reserved.
//

#import "UIView+CBXibExtention.h"

@implementation UIView (XibExtention)


+ (instancetype)loadFromNib {
    // [self class]会由调用的类决定
    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:nil options:nil] firstObject];
    
}
+ (instancetype)loadNibWithName:(NSString *)nibName{
    return [[[NSBundle mainBundle] loadNibNamed:nibName owner:self options:nil] firstObject];
}
@end
