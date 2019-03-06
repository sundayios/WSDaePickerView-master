//
//  UIBarButtonItem+CBNavBarItem.h
//  HuaDian
//
//  Created by cb_2018 on 2019/1/22.
//  Copyright © 2019 91cb. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIBarButtonItem (CBNavBarItem)
+ (UIBarButtonItem *)cb_BarButtonItemWithStyle:(UIBarButtonItemStyle)barButtonItemStyle Title:(NSString *)title action:(SEL)sel Target:(id)target;
- (void)cbSet_Enable:(BOOL)isEnable;
@end

NS_ASSUME_NONNULL_END
