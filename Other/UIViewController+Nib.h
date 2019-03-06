//
//  UIViewController+CBNib.h
//  HuaDian
//
//  Created by cb_2018 on 2018/12/20.
//  Copyright © 2018 91cb. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIViewController (Nib)
+ (instancetype)loadFromNib;
+ (instancetype)loadNibWithName:(NSString *)nibName;
@end

NS_ASSUME_NONNULL_END
