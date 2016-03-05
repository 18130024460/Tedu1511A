//
//  WangyiViewModel.m
//  TRProject
//
//  Created by tarena on 16/2/26.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "WangyiViewModel.h"
#import "WangyiNetManager.h"
#import "KejiNetManager.h"

@implementation WangyiViewModel

- (instancetype)initWithType:(TitleType)type{
    if (self = [super init]) {
        _type = type;
    }
    return self;
}
- (NSInteger)rowNumber{
    return self.dataList.count;
}
- (WangyiT1348648517839Model *)modelForRow:(NSInteger)row{
    return self.dataList[row];
}
- (NSURL *)imgsrcForRow:(NSInteger)row{
    return [NSURL URLWithString:[self modelForRow:row].imgsrc];
    return nil;
}
- (NSURL *)imgextra1ForRow:(NSInteger)row{
    return [NSURL URLWithString:[self modelForRow:row].imgextra[0].imgsrc];
}
- (NSURL *)imgextra2ForRow:(NSInteger)row{
    return [NSURL URLWithString:[self modelForRow:row].imgextra[1].imgsrc];
}
- (NSString *)titleForRow:(NSInteger)row{
    return [self modelForRow:row].title;
}
- (NSString *)digestForRow:(NSInteger)row{
    return [self modelForRow:row].digest;
}
- (NSString *)replyCountForRow:(NSInteger)row{
    return [NSString stringWithFormat:@"%ld跟帖", [self modelForRow:row].replyCount];
}
- (NSURL *)URL_3wForRow:(NSInteger)row{
    return [NSURL URLWithString:[self modelForRow:row].url_3w];
}


- (BOOL)firstImageStyleForRow:(NSInteger)row{
    return [self modelForRow:row].editor.count == 0;
}
- (BOOL)threeImageStyleForRow:(NSInteger)row{
    return [self modelForRow:row].digest.length < 1;
}

- (void)getDataWithRequestMode:(RequestMode)requestMode completionHanle:(void (^)(NSError *))completionHandle{
    NSInteger tmpPage = 0;
    switch (requestMode) {
        case RequestModeRefresh: {
            tmpPage = 0;
            break;
        }
        case RequestModeMore: {
            tmpPage = _page +20;
            break;
        }
    }
    
        self.dataTask = [WangyiNetManager getWangyiForID:tmpPage TitleType:_type competionHandle:^(WangyiModel *model, NSError *error) {
            if (!error) {
                if (requestMode == RequestModeRefresh) {
                    [self.dataList removeAllObjects];
                        
                }
                [self.dataList addObjectsFromArray:model.T1348648517839];
                _page = tmpPage;
                }
            completionHandle(error);
            }];
}
    #pragma mark -懒加载
- (NSMutableArray *)dataList{
    if (!_dataList) {
        _dataList = [NSMutableArray new];
    }
    return _dataList;
}
@end
