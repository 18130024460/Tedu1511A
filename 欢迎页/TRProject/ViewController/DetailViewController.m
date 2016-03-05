//
//  DetailViewController.m
//  TRProject
//
//  Created by tarena on 16/3/1.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "DetailViewController.h"
#import "Factory.h"

@interface DetailViewController ()<UIWebViewDelegate>
@property (nonatomic) UIWebView *webView;
@end

@implementation DetailViewController
#pragma mark - 方法
- (instancetype)initWithURL:(NSURL *)webURL{
    if (self = [super init]) {
        self.webURL = webURL;
    }
    return self;
}


#pragma mark - UIWebView 代理分组
//- (void)webViewDidStartLoad:(UIWebView *)webView{
//    [MBProgressHUD showHUDAddedTo:self.view animated:YES];
//}
//- (void)webViewDidFinishLoad:(UIWebView *)webView{
//    [MBProgressHUD hideHUDForView:self.view animated:YES];
//}
//- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{
//    [MBProgressHUD hideHUDForView:self.view animated:YES];
//}


#pragma mark -生命周期
- (void)viewDidLoad {
    [super viewDidLoad];
    [self.webView loadRequest:[NSURLRequest requestWithURL:self.webURL]];
    [Factory addBackItemToVC:self];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark -懒加载
- (UIWebView *)webView {
	if(_webView == nil) {
		_webView = [[UIWebView alloc] init];
        _webView.delegate = self;
        [self.view addSubview:_webView];
        [_webView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(0);
        }];
	}
	return _webView;
}

@end
