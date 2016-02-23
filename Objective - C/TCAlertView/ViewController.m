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
    arrFeature = [[NSArray alloc] initWithObjects:@"Toast Message Without Button",@"Toast Message With Button",@"One Button",@"Two Button",@"Multiple Button", nil];
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
            [[TCAlertView sharedInstance] show:@"Toast Message" message:@"This toast message" buttonTitles:@[] interval:3.0f btnClick:^(int buttonIndex) {
                NSLog(@"button Index %d",buttonIndex);
            }];
            break;
        case 1:
            [[TCAlertView sharedInstance] show:@"Toast Message" message:@"This toast message" buttonTitles:@[@"OK",@"Cancel"] interval:3.0f btnClick:^(int buttonIndex) {
                NSLog(@"button Index %d",buttonIndex);
            }];
            break;
        case 2:
            [[TCAlertView sharedInstance] show:@"Title" message:@"TCAlertView Message With One Button" buttonTitles:@[@"Ok"] btnClick:^(int buttonIndex) {
                NSLog(@"button Index %d",buttonIndex);
            }];
            break;
            
        case 3:
            [[TCAlertView sharedInstance] show:@"Title" message:@"TCAlertView Message With Two Button" buttonTitles:@[@"Ok",@"Cancel"] btnClick:^(int buttonIndex) {
                NSLog(@"button Index %d",buttonIndex);
            }];
            break;
        case 4:
            [[TCAlertView sharedInstance] show:@"Title" message:@"TCAlertView Message With Multiple Button" buttonTitles:@[@"One",@"Two",@"Three",@"Four",@"Five"] btnClick:^(int buttonIndex) {
                NSLog(@"button Index %d",buttonIndex);
            }];
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
