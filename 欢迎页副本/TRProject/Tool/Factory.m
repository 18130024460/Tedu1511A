//
//  Factory.m
//  TRProject
//
//  Created by jiyingxin on 16/2/17.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "Factory.h"

@implementation Factory
+(void)addBackItemToVC:(UIViewController *)vc{
    //左上角添加自定义返回按钮
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 0, 50, 25);
    [btn setTitle:@"返回" forState:UIControlStateNormal];
    [btn setTintColor:[UIColor blueColor]];
    //BlocksKit简化的点击方法
    [btn bk_addEventHandler:^(id sender) {
        [vc.navigationController popViewControllerAnimated:YES];
    } forControlEvents:UIControlEventTouchUpInside];
    btn.backgroundColor = [UIColor lightGrayColor];
    //把视图的边角变为圆形,cornerRadius圆角半径
    btn.layer.cornerRadius = 4;
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithCustomView:btn];
    //弹簧控件，修复边距
    UIBarButtonItem *spaceItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    spaceItem.width = -15;
    vc.navigationItem.leftBarButtonItems = @[spaceItem,backItem];
}
@end
