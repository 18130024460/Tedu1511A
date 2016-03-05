//
//  HuanyingyeViewController.m
//  huany
//
//  Created by tarena on 16/2/26.
//  Copyright © 2016年 tedu. All rights reserved.
//

#import "HuanyingyeViewController.h"
#import "AppDelegate.h"
#import "iCarousel.h"

@interface HuanyingyeViewController ()<iCarouselDelegate,iCarouselDataSource>
@property (weak, nonatomic) IBOutlet UIButton *button;
@property (nonatomic) iCarousel *ic;
@end

@implementation HuanyingyeViewController
#pragma mark - iCarouselDelegate 代理分组
- (CGFloat)carousel:(iCarousel *)carousel valueForOption:(iCarouselOption)option withDefault:(CGFloat)value{
    if (option == iCarouselOptionWrap) {
        return YES;
    }
    return value;
}
- (NSInteger)numberOfItemsInCarousel:(iCarousel *)carousel{
    return 4;
}
- (UIView *)carousel:(iCarousel *)carousel viewForItemAtIndex:(NSInteger)index reusingView:(UIView *)view{
    if (view == nil) {
        view = [[UIView alloc] initWithFrame:carousel.frame];
        UIImageView *iv = [UIImageView new];
        [view addSubview:iv];
        iv.tag = 100;
        [iv mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(0);
        }];
    }
    UIImageView *iv = [view viewWithTag:100];
            NSString *imageName = [NSString stringWithFormat:@"IMG_0%ld",index];
        [iv setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@", imageName]]];
    
    return view;
}

#pragma mark - 方法
- (IBAction)pushMainVC:(UIButton *)sender {
    AppDelegate *delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setObject:@"2" forKey:@"FirstLoad"];
    [delegate changeRootCV];

}


#pragma mark -生命周期
- (void)viewDidLoad {
    [super viewDidLoad];
    [self ic];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




#pragma mark -懒加载
- (iCarousel *)ic {
	if(_ic == nil) {
		_ic = [[iCarousel alloc] initWithFrame:[UIScreen mainScreen].bounds];
        _ic.delegate = self;
        _ic.dataSource = self;
        [_ic addSubview:_button];
        [_button mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(0);
            make.bottom.equalTo(-30);
        }];
//        _ic.autoscroll = YES;
        _ic.type = iCarouselTypeRotary;
        [self.view addSubview:_ic];
        
	}
	return _ic;
}

@end
