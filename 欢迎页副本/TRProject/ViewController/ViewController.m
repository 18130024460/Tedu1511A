//
//  ViewController.m
//  TRProject
//
//  Created by jiyingxin on 16/2/4.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "ViewController.h"
#import "WangyiNetManager.h"
#import "WangyiViewModel.h"
#import "WangyiTableViewCell.h"
#import "KejiViewModel.h"
#import "ManhuaViewModel.h"
#import "DetailViewController.h"
#import "YiTableViewCell.h"
#import "ThreeTableViewCell.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic) WangyiViewModel *wangyiVM;
@property (nonatomic) KejiViewModel *kejiVM;
@property (nonatomic) ManhuaViewModel *manhuaVM;
@end

@implementation ViewController
#pragma mark - UITableView 代理分组
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    NSInteger row = indexPath.row;
    switch (self.type) {
        case TitleTypeYule: {
            DetailViewController *vc = [[DetailViewController alloc] initWithURL:[self.wangyiVM URL_3wForRow:row]];
            [self.navigationController pushViewController:vc animated:YES];
            break;
        }
        case TitleTypeKeji: {
            DetailViewController *vc = [[DetailViewController alloc] initWithURL:[self.kejiVM URL_3wForRow:row]];
            [self.navigationController pushViewController:vc animated:YES];
            break;
        }
        case TitleTypeManhua: {
            DetailViewController *vc = [[DetailViewController alloc] initWithURL:[self.manhuaVM URL_3wForRow:row]];
            [self.navigationController pushViewController:vc animated:YES];
            break;
        }
    }
}

                           
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    switch (self.type) {
        case TitleTypeYule: {
            return self.wangyiVM.rowNumber;
            break;
        }
        case TitleTypeKeji: {
            return self.kejiVM.rowNumber;
            break;
        }
        case TitleTypeManhua: {
            return self.manhuaVM.rowNumber;
            break;
        }
    }
    return 0;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    WangyiTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"WangyiTableViewCell"];
    switch (self.type) {
        case TitleTypeYule: {
            if ([self.wangyiVM firstImageStyleForRow:indexPath.row] && ![self.wangyiVM threeImageStyleForRow:indexPath.row] ) {
                [cell.imageV setImageWithURL:[self.wangyiVM imgsrcForRow:indexPath.row]];
                cell.digestLb.text = [self.wangyiVM digestForRow:indexPath.row];
                cell.titleLb.text = [self.wangyiVM titleForRow:indexPath.row];
                cell.replyCount.text = [self.wangyiVM replyCountForRow:indexPath.row];
            }else if ([self.wangyiVM threeImageStyleForRow:indexPath.row]){
                NSLog(@"jjjj");
                ThreeTableViewCell *cell1 = [tableView dequeueReusableCellWithIdentifier:@"ThreeTableViewCell"];
                [cell1.imageView1 setImageWithURL:[self.wangyiVM imgsrcForRow:indexPath.row]];
                [cell1.imageView2 setImageWithURL:[self.wangyiVM imgextra1ForRow:indexPath.row]];
                [cell1.imageView3 setImageWithURL:[self.wangyiVM imgextra2ForRow:indexPath.row]];
                cell1.titleLb.text = [self.wangyiVM titleForRow:indexPath.row];
                return cell1;
            }else{
                YiTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"YiTableViewCell"];
                [cell.imgsrcV setImageWithURL:[self.wangyiVM imgsrcForRow:indexPath.row]];
                cell.digestLb.text = [self.wangyiVM digestForRow:indexPath.row];
                cell.litleLb.text = [self.wangyiVM titleForRow:indexPath.row];
                cell.replyCountLb.text = [self.wangyiVM replyCountForRow:indexPath.row];
                return cell;
            }
            
            break;
        }
        case TitleTypeKeji: {
            if ([self.kejiVM firstImageStyleForRow:indexPath.row]) {
                [cell.imageV setImageWithURL:[self.kejiVM imgsrcForRow:indexPath.row]];
                cell.digestLb.text = [self.kejiVM digestForRow:indexPath.row];
                cell.titleLb.text = [self.kejiVM titleForRow:indexPath.row];
                cell.replyCount.text = [self.kejiVM replyCountForRow:indexPath.row];
            }else{
                YiTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"YiTableViewCell"];
                [cell.imgsrcV setImageWithURL:[self.kejiVM imgsrcForRow:indexPath.row]];
                cell.digestLb.text = [self.kejiVM digestForRow:indexPath.row];
                cell.litleLb.text = [self.kejiVM titleForRow:indexPath.row];
                cell.replyCountLb.text = [self.kejiVM replyCountForRow:indexPath.row];
                return cell;
            }
            break;
        }
        case TitleTypeManhua: {
            if ([self.manhuaVM firstImageStyleForRow:indexPath.row]) {
                [cell.imageV setImageWithURL:[self.manhuaVM imgsrcForRow:indexPath.row]];
                cell.digestLb.text = [self.manhuaVM digestForRow:indexPath.row];
                cell.titleLb.text = [self.manhuaVM titleForRow:indexPath.row];
                cell.replyCount.text = [self.manhuaVM replyCountForRow:indexPath.row];
            }else{
                YiTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"YiTableViewCell"];
                [cell.imgsrcV setImageWithURL:[self.manhuaVM imgsrcForRow:indexPath.row]];
                cell.digestLb.text = [self.manhuaVM digestForRow:indexPath.row];
                cell.litleLb.text = [self.manhuaVM titleForRow:indexPath.row];
                cell.replyCountLb.text = [self.manhuaVM replyCountForRow:indexPath.row];
                return cell;
            }
            break;
        }
    }
    
    return cell;
    
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    switch (self.type) {
        case TitleTypeYule: {
            if ([self.wangyiVM firstImageStyleForRow:indexPath.row] && ![self.wangyiVM threeImageStyleForRow:indexPath.row]) {
                return 90;
            }else if([self.wangyiVM threeImageStyleForRow:indexPath.row]){
                return 150;
            }else
                return 230;
            break;
        }
        case TitleTypeKeji: {
            if ([self.kejiVM firstImageStyleForRow:indexPath.row]) {
                return 90;
            }else{
                return 230;
            }
            break;
        }
        case TitleTypeManhua: {
            if ([self.manhuaVM firstImageStyleForRow:indexPath.row]) {
                return 90;
            }else{
                return 230;
            }
            break;
        }
    }
    return 90;
}
#pragma mark -生命周期
- (void)viewDidLoad {
    [super viewDidLoad];
    switch (self.type) {
        case TitleTypeYule: {
            [_tableView addHeaderRefresh:^{
                [self.wangyiVM getDataWithRequestMode:RequestModeRefresh completionHanle:^(NSError *error) {
                    [_tableView reloadData];
                }];
                [_tableView endHeaderRefresh];
            }];
            
            [_tableView addAutoFooterRefresh:^{
                [self.wangyiVM getDataWithRequestMode:RequestModeMore completionHanle:^(NSError *error) {
                    [_tableView reloadData];
                }];
                [_tableView endFooterRefresh];
            }];
            [_tableView beginHeaderRefresh];
            break;
        }
        case TitleTypeKeji: {
            [_tableView addHeaderRefresh:^{
                [self.kejiVM getDataWithRequestMode:RequestModeRefresh completionHanle:^(NSError *error) {
                    [_tableView reloadData];
                }];
                [_tableView endHeaderRefresh];
            }];
            
            [_tableView addAutoFooterRefresh:^{
                [self.kejiVM getDataWithRequestMode:RequestModeMore completionHanle:^(NSError *error) {
                    [_tableView reloadData];
                }];
                [_tableView endFooterRefresh];
            }];
            [_tableView beginHeaderRefresh];
            break;
        }
        case TitleTypeManhua: {
            [_tableView addHeaderRefresh:^{
                [self.manhuaVM getDataWithRequestMode:RequestModeRefresh completionHanle:^(NSError *error) {
                    [_tableView reloadData];
                }];
                [_tableView endHeaderRefresh];
            }];
            
            [_tableView addAutoFooterRefresh:^{
                [self.manhuaVM getDataWithRequestMode:RequestModeMore completionHanle:^(NSError *error) {
                    [_tableView reloadData];
                }];
                [_tableView endFooterRefresh];
            }];
            [_tableView beginHeaderRefresh];
            break;
        }
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark -懒加载
- (WangyiViewModel *)wangyiVM {
	if(_wangyiVM == nil) {
		_wangyiVM = [[WangyiViewModel alloc] initWithType:self.type];
	}
	return _wangyiVM;
}

- (KejiViewModel *)kejiVM {
	if(_kejiVM == nil) {
        NSLog(@"19");
		_kejiVM = [[KejiViewModel alloc] initWithType:self.type];
	}
	return _kejiVM;
}

- (ManhuaViewModel *)manhuaVM {
	if(_manhuaVM == nil) {
		_manhuaVM = [[ManhuaViewModel alloc] initWithType:self.type];
	}
	return _manhuaVM;
}

@end
