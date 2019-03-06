//
//  UIButton+CBS.h
//  ExampleTest
//
//  Created by cb_2018 on 2019/1/10.
//  Copyright © 2019 cb_2018. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger,HLButtonEdgeInsetsStyle)
{
    HLButtonEdgeInsetsStyleTop,//image在上，label在下
    HLButtonEdgeInsetsStyleLeft,//image在左,label在右
    HLButtonEdgeInsetsStyleBottom,//image在下，label在上
    HLButtonEdgeInsetsStyleRight//image在右,label在左
};
@interface UIButton (LayoutImage)

/**
 *  设置button内部的image和title的布局样式
 *
 *  @param style 布局样式
 *  @param space 间距
 */
- (void)layoutButtonWithEdgeInsetsStyle:(HLButtonEdgeInsetsStyle)style imageTitleSpace:(CGFloat)space;

@end

NS_ASSUME_NONNULL_END
