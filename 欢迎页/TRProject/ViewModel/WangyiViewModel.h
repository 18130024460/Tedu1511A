//
//  WangyiViewModel.h
//  TRProject
//
//  Created by tarena on 16/2/26.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WangyiModel.h"
#import "WangyiNetManager.h"
#import "NSObject+ViewModel.h"

@interface WangyiViewModel : NSObject
//根据View
@property (nonatomic) NSInteger rowNumber;
- (WangyiT1348648517839Model *)modelForRow:(NSInteger)row;
- (NSURL *)imgsrcForRow:(NSInteger)row;
- (NSURL *)imgextra1ForRow:(NSInteger)row;
- (NSURL *)imgextra2ForRow:(NSInteger)row;
- (NSString *)titleForRow:(NSInteger)row;
- (NSString *)digestForRow:(NSInteger)row;
- (NSString *)replyCountForRow:(NSInteger)row;
- (NSURL *)URL_3wForRow:(NSInteger)row;

@property (nonatomic) TitleType type;
- (instancetype)initWithType:(TitleType)type;


//根据Model
@property (nonatomic) NSInteger page;
@property (nonatomic) NSMutableArray *dataList;
- (BOOL)firstImageStyleForRow:(NSInteger)row;
- (BOOL)threeImageStyleForRow:(NSInteger)row;

@end
