//
//  KejiNetManager.m
//  TRProject
//
//  Created by tarena on 16/2/27.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "KejiNetManager.h"

@implementation KejiNetManager
+ (id)getKejiForID:(NSInteger)Id TitleType:(TitleType)titleType competionHandle:(void (^)(id, NSError *))completionHandle{
    NSString *path = [NSString stringWithFormat:@"http://c.m.163.com/nc/article/list/T1348649580692/%ld-20.html",Id];
    return [self GET:path parameters:nil progress:nil completionHandle:^(id responseObj, NSError *error) {
        completionHandle([KejiModel parse:responseObj], error);
    }];
}
@end
