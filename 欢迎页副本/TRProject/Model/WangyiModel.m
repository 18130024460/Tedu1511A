//
//  WangyiModel.m
//  TRProject
//
//  Created by tarena on 16/2/26.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "WangyiModel.h"

@implementation WangyiModel


+ (NSDictionary *)objClassInArray{
    return @{@"T1348648517839" : [WangyiT1348648517839Model class]};
}
@end
@implementation WangyiT1348648517839Model

+ (NSDictionary *)objClassInArray{
    return @{@"ads" : [WangyiT1348648517839AdsModel class], @"imgextra" : [WangyiT1348648517839ImgextraModel class]};
}

@end


@implementation WangyiT1348648517839AdsModel

@end


@implementation WangyiT1348648517839ImgextraModel

@end


