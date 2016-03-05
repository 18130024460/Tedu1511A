//
//  SettingController.m
//  TRProject
//
//  Created by tarena on 16/3/4.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "SettingController.h"

@interface SettingController ()
@property (weak, nonatomic) IBOutlet UIView *view1;
@property (weak, nonatomic) IBOutlet UIView *view2;
@property (weak, nonatomic) IBOutlet UIView *view3;
@property (weak, nonatomic) IBOutlet UIView *view4;
@property (weak, nonatomic) IBOutlet UIView *view5;
@property (weak, nonatomic) IBOutlet UIView *view6;
@property (weak, nonatomic) IBOutlet UIView *view7;

@end

@implementation SettingController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self settingViewType:_view1];
    [self settingViewType:_view2];
    [self settingViewType:_view3];
    [self settingViewType:_view4];
    [self settingViewType:_view5];
    [self settingViewType:_view6];
    [self settingViewType:_view7];

    

}

//VIew四角添加弧度
- (void)settingViewType:(UIView *)view{
    view.layer.masksToBounds = YES;
    view.layer.cornerRadius = 6.0;
    view.layer.borderWidth = 1.0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
