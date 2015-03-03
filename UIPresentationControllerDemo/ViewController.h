//
//  ViewController.h
//  UIPresentationControllerDemo
//  Copyright (c) 2015年 yu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ContainerViewBLETable.h"

@interface ViewController : UIViewController<ContainerViewBLETableDelegate>

@property (weak, nonatomic) IBOutlet UIButton *btn;
- (IBAction)btnAction:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *lb;
@property (weak, nonatomic) IBOutlet UIView *containerView;

-(IBAction)unwindSegue:(UIStoryboardSegue *)segue;

@end

