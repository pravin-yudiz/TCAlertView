//
//  TCAlertView.h
//  StoryBoardDemo
//
//  Created by Pankaj Yogesh on 2/5/16.
//  Copyright (c) 2016 Technocracker. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface TCAlertView : NSObject<UIAlertViewDelegate>
+ (TCAlertView *) sharedInstance;
typedef void (^ButtonClick)(int buttonIndex);
@property (nonatomic, copy) void (^btnClick)(int);
-(void)show:(NSString*)title message:(NSString*)message buttonTitles:(NSArray*)buttons btnClick:(void (^)(int))btnIndex;
@end
