//
//  ViewController.m
//  TCAlertView
//  Copyright (c) 2016 Technocracker. All rights reserved.
//

#import "ViewController.h"
#import "TCAlertView.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
{
    NSArray *arrFeature;
    UITableView *tblList;
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    arrFeature = [[NSArray alloc] initWithObjects:@"Toas Message",@"Ok Button",@"Cancel Button",@"Multiple Button", nil];
    CGSize screen = [UIScreen mainScreen].bounds.size;
    
    tblList = [[UITableView alloc] initWithFrame:CGRectMake(0,0,screen.width,screen.height)];
    tblList.dataSource = self;
    tblList.delegate = self;
    [self.view addSubview:tblList];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return arrFeature.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *strIdentifier=[NSString stringWithFormat:@"Cell%ld",(long)indexPath.row];
    
    UITableViewCell *cell=(UITableViewCell *) [tableView dequeueReusableCellWithIdentifier:strIdentifier];
    if (cell == nil)
    {
        cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:strIdentifier];
    }
    cell.textLabel.text = arrFeature[indexPath.row];
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.row)
    {
        case 0:
            NSLog(@"1");
            break;
            
        default:
            break;
    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
