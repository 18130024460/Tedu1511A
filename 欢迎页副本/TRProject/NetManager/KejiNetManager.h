//
//  KejiNetManager.h
//  TRProject
//
//  Created by tarena on 16/2/27.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KejiModel.h"
#import "WangyiNetManager.h"

@interface KejiNetManager : NSObject
+ (id)getKejiForID:(NSInteger)Id TitleType:(TitleType)titleType competionHandle:kCompetionHandleBlock;
@end
