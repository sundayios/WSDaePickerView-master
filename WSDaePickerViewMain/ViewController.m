//
//  ViewController.m
//  WSDaePickerView
//
//  Created by cb_2018 on 2019/3/6.
//  Copyright © 2019 cfwf. All rights reserved.
//

#import "ViewController.h"
#import "SQMacro.h"
#import "NSDate+Extend.h"
#import "WSDatePickerView.h"

#define Color_Blue_Custom_BG [UIColor blueColor]
@interface ViewController ()
@property (nonatomic, strong) UITextField *startTimeTextField;
@property (nonatomic, strong) UITextField *endTimeTextField;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)selectBtnClick:(UIButton *)sender {
    NSInteger tag = sender.tag;
    switch (tag) {
        case 0:
        {
            //开始时间
            WeakSelf(self)
            WSDatePickerView *datePicker = [[WSDatePickerView alloc] initWithDateStyle:DateStyleShowYearMonthDay CompleteBlock:^(NSDate * date) {
                
                weakself.startTimeTextField.text = [date stringWithFormat:@"yyyy-MM-dd"];
            }];
            datePicker.hideBackgroundYearLabel = YES;
            datePicker.dateLabelColor = Color_Blue_Custom_BG;
            datePicker.doneButtonColor = [UIColor whiteColor];
            NSDate *current = [NSDate date];
            datePicker.minLimitDate = current;
            NSDate *maxDate = [current dateByAddingYears:30];
            datePicker.maxLimitDate = maxDate;
            [datePicker show];
            //
        }
            break;
        case 1:
        {
            //结束时间
            NSString *startStr= [self.endTimeTextField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];;
            if (startStr.length > 0) {
                WeakSelf(self)
                WSDatePickerView *datePicker = [[WSDatePickerView alloc] initWithDateStyle:DateStyleShowYearMonthDay CompleteBlock:^(NSDate * date) {
                    
                    weakself.startTimeTextField.text = [date stringWithFormat:@"yyyy-MM-dd"];
                }];
                datePicker.hideBackgroundYearLabel = YES;
                datePicker.dateLabelColor = Color_Blue_Custom_BG;
                datePicker.doneButtonColor = [UIColor whiteColor];
                NSDate *current = [NSDate dateWithString:startStr format:@"yyyy-MM-dd"];
                datePicker.minLimitDate = current;
                NSDate *maxDate = [current dateByAddingYears:30];
                datePicker.maxLimitDate = maxDate;
                [datePicker show];
            }else{
//                [ToolUtils showError:@"请选择开始时间"];
            }
        }
            break;
        case 2:
        {
            //生产技术部专责
        }
            break;
        case 3:
        {
            //生产技术部主任
        }
            break;
        case 4:
        {
            //生产主管领导
        }
            break;
        default:
            break;
    }
}

@end
