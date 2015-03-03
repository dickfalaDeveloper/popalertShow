//
//  ViewController.m
//  UIPresentationControllerDemo
//
//  Created by Chang YuanYu on 2015/2/24.
//  Copyright (c) 2015年 yu. All rights reserved.
//

#import "ViewController.h"
#import "ContainerViewBLETable.h"

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.presentingViewController dismissViewControllerAnimated:NO completion:nil];
}

- (IBAction)btnAction:(id)sender {
//    _containerView.hidden = NO;
    [self.presentingViewController dismissViewControllerAnimated:NO completion:nil];
    
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if( [segue.identifier isEqualToString:@"alertSegue"])
    {
        ContainerViewBLETable *vc = segue.destinationViewController;
        vc.delegate = self;
    }
}

-(void) ContainerViewBLETable:(ContainerViewBLETable *)vc andSelectedDone:(NSString *)selectedStr
{
//    self.lb.text = selectedStr;
//    vc.view.hidden = YES;
}

-(IBAction)unwindSegue:(UIStoryboardSegue *)segue
{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
