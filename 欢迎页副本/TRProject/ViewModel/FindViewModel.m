//
//  FindViewModel.m
//  TRProject
//
//  Created by tarena on 16/3/4.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "FindViewModel.h"
#import "NSObject+ViewModel.h"

@implementation FindViewModel
- (NSInteger)rowNumber{
    return self.dataList.count;
}
- (NSURL *)imgsrcForRow:(NSInteger)row{
    return [NSURL URLWithString:[self modelForRow:row].imgsrc];
}
- (NSString *)titleForRow:(NSInteger)row{
    return [self modelForRow:row].title;
}
- (ManhuaT1444289532601Model *)modelForRow:(NSInteger)row{
    return self.dataList[row];
}

- (void)getDataWithRequestMode:(RequestMode)requestMode completionHanle:(void (^)(NSError *))completionHandle{
    NSInteger tmpPage = 0;
    switch (requestMode) {
        case RequestModeRefresh: {
            tmpPage = 0;
            break;
        }
        case RequestModeMore: {
            tmpPage = _page + 20;
            break;
        }
    }
    self.dataTask = [ManhuaNetManager getManhuaForID:tmpPage TitleType:(TitleTypeManhua) competionHandle:^(ManhuaModel *model, NSError *error) {
        if (!error) {
            if (requestMode == RequestModeRefresh) {
                [self.dataList removeAllObjects];
            }
            [self.dataList addObjectsFromArray:model.T1444289532601];
            _page = tmpPage;
        }
        completionHandle(error);
    }];
}
@end
