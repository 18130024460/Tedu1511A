//
//  KejiViewModel.h
//  TRProject
//
//  Created by tarena on 16/2/27.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KejiNetManager.h"
#import "WangyiNetManager.h"

@interface KejiViewModel : NSObject
//根据View
@property (nonatomic) NSInteger rowNumber;
- (KejiT1348649580692Model *)modelForRow:(NSInteger)row;
- (NSURL *)imgsrcForRow:(NSInteger)row;
- (NSString *)titleForRow:(NSInteger)row;
- (NSString *)digestForRow:(NSInteger)row;
- (NSString *)replyCountForRow:(NSInteger)row;
- (NSURL *)URL_3wForRow:(NSInteger)row;

@property (nonatomic) TitleType type;
- (instancetype)initWithType:(TitleType)type;
- (BOOL)firstImageStyleForRow:(NSInteger)row;


//根据Model
@property (nonatomic) NSInteger page;
@property (nonatomic) NSMutableArray *dataList;

@end
