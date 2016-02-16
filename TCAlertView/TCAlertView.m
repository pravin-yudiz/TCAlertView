//
//  TCAlertView.m
//  StoryBoardDemo
//
//  Created by Pankaj Yogesh on 2/5/16.
//  Copyright (c) 2016 Technocracker. All rights reserved.
//

#import "TCAlertView.h"

@implementation TCAlertView
{
    UIAlertView *alertView;
    
}
static TCAlertView *sharedObject = nil;
+(TCAlertView*)sharedInstance
{
    @synchronized(self)
    {
        if (sharedObject == nil)
        {
            sharedObject = [[TCAlertView alloc] init];
        }
    }
    return sharedObject;
}
-(void)show:(NSString *)title message:(NSString *)message buttonTitles:(NSArray*)buttons btnClick:(void (^)(int))btnIndex
{
    self.btnClick = btnIndex;
    alertView = [[UIAlertView alloc] initWithTitle:title message:message delegate:self cancelButtonTitle:nil otherButtonTitles:nil];
    
    for (NSString *title in buttons)
    {
        [alertView addButtonWithTitle:title];
    }
    
    alertView.delegate = self;
    [alertView show];

}
-(void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    if (self.btnClick)
    {
        self.btnClick(buttonIndex);
    }
    
}
@end
