//
//  WangyiNetManager.m
//  TRProject
//
//  Created by tarena on 16/2/26.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "WangyiNetManager.h"
#import "WangyiModel.h"
#import "KejiModel.h"

@implementation WangyiNetManager

+ (id)getWangyiForID:(NSInteger)Id TitleType:(TitleType)titleType competionHandle:(void (^)(id, NSError *))completionHandle{
    NSString *path = [NSString new];
        path = [NSString stringWithFormat:@"http://c.m.163.com/nc/article/list/T1348648517839/%ld-20.html", Id];
        return [self GET:path parameters:nil progress:nil completionHandle:^(id responseObj, NSError *error) {
                completionHandle([WangyiModel parse:responseObj], error);
            }];
}

@end


