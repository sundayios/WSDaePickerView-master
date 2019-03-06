//
//  Header.h
//  HuaDian
//
//  Created by cb_2018 on 2018/12/20.
//  Copyright © 2018 91cb. All rights reserved.
//

#ifndef SQMacro_h
#define SQMacro_h

#define SQMargin 12.5f
#define SQFont(sizef) [UIFont systemFontOfSize:sizef]
#define SQFontWeight(sizef,FontWeight) [UIFont systemFontOfSize:sizef weight:FontWeight]
#define SQFontName(name,sizef) [UIFont fontWithName:name size:sizef]

#define Font12 SQFont(12)
#define Font14 SQFont(14)
#define Font_Nav_Item SQFont(16)
#define Font_Bold_Nav_Item [UIFont boldSystemFontOfSize:17]
#define Font_Lable_Gray_Tip SQFont(12)
#define Font_UITableViewCell_TextLabel Font14
#define Font_Label_Left_title Font14

#define WeakSelf(type) __weak typeof(type) weak##type = type;
#define StrongSelf(type) __strong typeof(weak##type) strong##type = weak##type;
//提示文字
#define Color_Tip_Gray [ToolUtils getColor:@"999999"]

//导航栏item的颜色
#define Color_Nav_Item [ToolUtils getColor:@"333333"]
//默认view背景
#define Color_BG_View [ToolUtils getColor:@"f5f5fa"]
//主题文字颜色
#define Color_Comon_Black_Darken [ToolUtils getColor:@"333333"]
//UITableView Title的颜色 51,51,51
#define Color_Cell_textLabel [ToolUtils getColor:@"333333"]
//二重提示文字 153, 153,153
#define Color_Cell_Subtitle_Gray [ToolUtils getColor:@"999999"]
//UITableview分割颜色
#define Color_Separator_Cell_Line [ToolUtils getColor:@"e5e5e5"]
//下拉滑动时view的颜色 
#define Color_Drop_View_BG [ToolUtils getColor:@"c4c4c8"]
//自定义蓝色 3,169,244
#define Color_Blue_Custom_BG [ToolUtils getColor:@"03a9f4"]
//
#define RGBA(R,G,B,A) [UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:A]
//默认占位图
#define HomeImagePlaceHolderName @""
//URL
#define URLFromStr(str) [NSURL URLWithString:str]

#endif /* SQMacro_h */
