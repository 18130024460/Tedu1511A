//
//  KejiModel.h
//  TRProject
//
//  Created by tarena on 16/2/27.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@class KejiT1348649580692Model,KejiT1348649580692AdsModel;
@interface KejiModel : NSObject

@property (nonatomic, strong) NSArray<KejiT1348649580692Model *> *T1348649580692;

@end
@interface KejiT1348649580692Model : NSObject

@property (nonatomic, copy) NSString *tname;

@property (nonatomic, copy) NSString *ptime;

@property (nonatomic, copy) NSString *source;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, copy) NSString *url;

@property (nonatomic, copy) NSString *url_3w;

@property (nonatomic, copy) NSString *postid;

@property (nonatomic, assign) NSInteger hasHead;

@property (nonatomic, assign) NSInteger hasImg;

@property (nonatomic, copy) NSString *lmodify;

@property (nonatomic, copy) NSString *docid;

@property (nonatomic, copy) NSString *template;

@property (nonatomic, assign) NSInteger replyCount;

@property (nonatomic, assign) NSInteger votecount;

@property (nonatomic, copy) NSString *alias;

@property (nonatomic, assign) BOOL hasCover;

@property (nonatomic, assign) NSInteger priority;

@property (nonatomic, copy) NSString *skipType;

@property (nonatomic, copy) NSString *cid;

@property (nonatomic, assign) NSInteger hasAD;

@property (nonatomic, copy) NSString *imgsrc;

@property (nonatomic, copy) NSString *ltitle;

@property (nonatomic, assign) BOOL hasIcon;

@property (nonatomic, strong) NSArray<KejiT1348649580692AdsModel *> *ads;

@property (nonatomic, copy) NSString *subtitle;

@property (nonatomic, copy) NSString *ename;

@property (nonatomic, copy) NSString *specialID;

@property (nonatomic, copy) NSString *skipID;

@property (nonatomic, copy) NSString *boardid;

@property (nonatomic, assign) NSInteger order;

@property (nonatomic, copy) NSString *digest;

@property (nonatomic,copy) NSArray *editor;

@property (nonatomic) NSInteger imgType;

@end

@interface KejiT1348649580692AdsModel : NSObject

@property (nonatomic, copy) NSString *url;

@property (nonatomic, copy) NSString *docid;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, copy) NSString *subtitle;

@property (nonatomic, copy) NSString *tag;

@property (nonatomic, copy) NSString *imgsrc;

@end

