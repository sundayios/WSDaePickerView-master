//
//  UIBarButtonItem+CBNavBarItem.m
//  HuaDian
//
//  Created by cb_2018 on 2019/1/22.
//  Copyright © 2019 91cb. All rights reserved.
//

#import "UIBarButtonItem+CBNavBarItem.h"
#import "UIImage+Color.h"
@implementation UIBarButtonItem (CBNavBarItem)
+ (UIBarButtonItem *)cb_BarButtonItemWithStyle:(UIBarButtonItemStyle)barButtonItemStyle Title:(NSString *)title action:(SEL)sel Target:(id)target{
    UIBarButtonItem *barItem = [[self alloc] initWithTitle:title style:barButtonItemStyle target:target action:sel];
    [barItem  setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor], NSFontAttributeName:[UIFont systemFontOfSize:16]} forState:UIControlStateNormal];
    return barItem;
}
- (void)cbSet_Enable:(BOOL)isEnable{
    if (isEnable) {
        self.enabled = YES;
        [self setBackgroundImage:[UIImage cb_ImageRectWithColor:[APPColor colorWithAlphaComponent:1]] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
        [self setTintColor:[[UIColor whiteColor] colorWithAlphaComponent:1]];
    }else{
        self.enabled = NO;
        [self setBackgroundImage:[UIImage cb_ImageRectWithColor:[APPColor colorWithAlphaComponent:0.2]] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
        [self setTintColor:[[UIColor whiteColor] colorWithAlphaComponent:1]];
    }
}
@end
