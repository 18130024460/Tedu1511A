//
//  FindViewModel.h
//  TRProject
//
//  Created by tarena on 16/3/4.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ManhuaNetManager.h"
#import "ManhuaModel.h"

@interface FindViewModel : NSObject
//根据View
@property (nonatomic) NSInteger rowNumber;
- (ManhuaT1444289532601Model *)modelForRow:(NSInteger)row;
- (NSURL *)imgsrcForRow:(NSInteger)row;
- (NSString *)titleForRow:(NSInteger)row;


//根据Model
@property (nonatomic) NSInteger page;
@property (nonatomic) NSMutableArray *dataList;
@end
