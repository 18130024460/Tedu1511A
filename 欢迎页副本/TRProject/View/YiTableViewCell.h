//
//  YiTableViewCell.h
//  TRProject
//
//  Created by tarena on 16/2/29.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YiTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *litleLb;
@property (weak, nonatomic) IBOutlet UIImageView *imgsrcV;
@property (weak, nonatomic) IBOutlet UILabel *replyCountLb;
@property (weak, nonatomic) IBOutlet UILabel *digestLb;

@end
