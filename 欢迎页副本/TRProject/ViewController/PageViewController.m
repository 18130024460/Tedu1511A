//
//  PageViewController.m
//  TRProject
//
//  Created by tarena on 16/2/27.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "PageViewController.h"
#import "ViewController.h"
#import "LeftViewController.h"
#import <RESideMenu.h>

@interface PageViewController ()<WMPageControllerDelegate,WMPageControllerDataSource>
@property (nonatomic) LeftViewController *leftVC;
@end

@implementation PageViewController
- (instancetype)initWithCoder:(NSCoder *)aDecoder{
    if (self = [super initWithCoder:aDecoder]) {
//        self.showOnNavigationBar = YES;
//        self.menuHeight = 40;
//        self.menuBGColor = [UIColor greenColor];
        self.menuViewStyle = WMMenuViewStyleDefault;
    }
    return self;
}
- (NSArray *)titles{
    return @[@"娱乐",@"科技",@"漫画"];
}

#pragma mark - WMPageCOntroller 代理分组
//有多少个子控制器
- (NSInteger)numbersOfChildControllersInPageController:(WMPageController *)pageController{
    return self.titles.count;
}
//每个子控制器的样式
- (UIViewController *)pageController:(WMPageController *)pageController viewControllerAtIndex:(NSInteger)index{
    ViewController *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"ViewController"];
    vc.type = index;
    NSLog(@"1%ld",vc.type);
    return vc;
}

#pragma mark - 方法
- (IBAction)openMenu:(UIBarButtonItem *)sender {
 
}


#pragma mark -生命周期
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (LeftViewController *)leftVC {
	if(_leftVC == nil) {
        _leftVC = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"LeftViewController"];
	}
	return _leftVC;
}

@end
