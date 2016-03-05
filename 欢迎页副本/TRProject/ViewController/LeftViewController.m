//
//  LeftViewController.m
//  TRProject
//
//  Created by tarena on 16/3/3.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "LeftViewController.h"
#import "MainViewController.h"

@interface LeftViewController ()
@property (weak, nonatomic) IBOutlet UIButton *shouyeBut;


@end

@implementation LeftViewController
#pragma mark - 方法
- (IBAction)backShouye:(UIButton *)sender {
    MainViewController *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"MainViewController"];
    [self.sideMenuViewController setContentViewController:vc];
    [self.sideMenuViewController hideMenuViewController];
}
- (IBAction)goFind:(UIButton *)sender {
    [self.sideMenuViewController setContentViewController:[[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"loading"]];
    [self.sideMenuViewController hideMenuViewController];
}
- (IBAction)tomessage:(id)sender {
    
}
- (IBAction)goSetting:(id)sender {
    [self.sideMenuViewController setContentViewController:[[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"1234567"]];
    [self.sideMenuViewController hideMenuViewController];
}


#pragma mark -生命周期
- (void)viewDidLoad {
    [super viewDidLoad];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
