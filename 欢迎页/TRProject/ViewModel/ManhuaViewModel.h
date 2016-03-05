//
//  ManhuaViewModel.h
//  TRProject
//
//  Created by tarena on 16/2/29.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WangyiNetManager.h"
#import "ManhuaNetManager.h"
#import "ManhuaModel.h"

@interface ManhuaViewModel : NSObject
//根据View
@property (nonatomic) NSInteger rowNumber;
- (ManhuaT1444289532601Model *)modelForRow:(NSInteger)row;
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
- (BOOL)normalStyleForRow:(NSInteger)row;
@end
