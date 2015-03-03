//
//  containerViewBLETable.h
//  UIPresentationControllerDemo
//
//  Copyright (c) 2015年 yu. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ContainerViewBLETable;
@protocol ContainerViewBLETableDelegate <NSObject>

-(void) ContainerViewBLETable:(ContainerViewBLETable*)vc andSelectedDone:(NSString*)selectedStr;

@end

@interface ContainerViewBLETable : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property(nonatomic,assign) id<ContainerViewBLETableDelegate>delegate;

@property (weak, nonatomic) IBOutlet UITableView *tableVW;

@end
