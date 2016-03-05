//
//  WangyiNetManager.h
//  TRProject
//
//  Created by tarena on 16/2/26.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, TitleType) {
    TitleTypeYule,
    TitleTypeKeji,
    TitleTypeManhua
};

@interface WangyiNetManager : NSObject

+ (id)getWangyiForID:(NSInteger)Id TitleType:(TitleType)titleType competionHandle:kCompetionHandleBlock;
@end
