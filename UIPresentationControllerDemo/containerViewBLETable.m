//
//  containerViewBLETable.m
//  UIPresentationControllerDemo
//
//  Copyright (c) 2015年 yu. All rights reserved.
//

#import "ContainerViewBLETable.h"
#import "ViewController.h"

@implementation ContainerViewBLETable

-(void) viewDidLoad
{
    [super viewDidLoad];
    
    self.tableVW.dataSource = self;
    self.tableVW.delegate = self;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];

    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }

    cell.textLabel.text = [NSString stringWithFormat:@"%ld",indexPath.row];
    
    return cell;
}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self.delegate ContainerViewBLETable:self andSelectedDone:[NSString stringWithFormat:@"%ld",indexPath.row]];
    ViewController *vc = [[self storyboard] instantiateViewControllerWithIdentifier:@"ViewController"];
    [self presentViewController:vc animated:YES completion:nil];
    
    /*
    ((ViewController*)self.parentViewController).lb.text =[NSString stringWithFormat:@"%ld",indexPath.row];
    ((ViewController*)self.parentViewController).containerView.hidden = YES;
     */
    
//    [self performSegueWithIdentifier:@"unwindSegueAlert" sender:self];
//    [self.parentViewController dismissViewControllerAnimated:YES completion:nil];
}


@end
