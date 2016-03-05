//
//  Factory.h
//  TRProject
//
//  Created by jiyingxin on 16/2/17.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Factory : NSObject
//工厂：生产一种类型的对象，就好像实际生活中，点一下按钮，就会自动生产对应的产品
/** 向视图控制器上拼装返回按钮*/
+ (void)addBackItemToVC:(UIViewController *)vc;
@end
