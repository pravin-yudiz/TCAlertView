# TCAlertView

TCAlertView is alternative of UIAlertView,main feature is you can no need to implement alerview delegate for identify which button was tap

## Getting Started

These instructions will get you a copy TCAlertView.h and TCAlertView.m  iles in ypur project up and running on your local machine for development and testing purposes. See the following code that describe, how to use TCAlertView control
  
## Feature of TCAlertView

* Toast Message Without Button
* Toast Message With Button
* UIAlertView With One Button
* UIAlertView With Two Button
* UIAlertView With Multiple Button <br/><br/>
* Toast Message Without Button
```
 [[TCAlertView sharedInstance] show:@"Toast Messahe" message:@"This toast message" buttonTitles:@[] interval:3.0f btnClick:^(int buttonIndex) {
      NSLog(@"button Index %d",buttonIndex);
  }];
```
![Toast message](https://github.com/technocracker/TCAlertView/blob/master/doc/toast%20messge.png)

* Toast Message With Button
```
 [[TCAlertView sharedInstance] show:@"Toast Messahe" message:@"This toast message" buttonTitles:@[@"OK",@"Cancel"] interval:3.0f btnClick:^(int buttonIndex) {
      NSLog(@"button Index %d",buttonIndex);
 }];
```
![one or more button](https://github.com/technocracker/TCAlertView/blob/master/doc/one%20or%20two%20button.png)
* UIAlertView With One Button
```
 [[TCAlertView sharedInstance] show:@"Title" message:@"TCAlertView Message With One Button" buttonTitles:@[@"Ok"] btnClick:^(int buttonIndex) {
     NSLog(@"button Index %d",buttonIndex);
}];
```

* UIAlertView With Two Button
```
 [[TCAlertView sharedInstance] show:@"Title" message:@"TCAlertView Message With Two Button" buttonTitles:@[@"Ok",@"Cancel"] btnClick:^(int buttonIndex) {
      NSLog(@"button Index %d",buttonIndex);
 }];
```

* UIAlertView With Multiple Button
```
[[TCAlertView sharedInstance] show:@"Title" message:@"TCAlertView Message With Multiple Button" buttonTitles:@[@"One",@"Two",@"Three",@"Four",@"Five"] btnClick:^(int buttonIndex) {
       NSLog(@"button Index %d",buttonIndex);
 }];
```

![Multiple button](https://github.com/technocracker/TCAlertView/blob/master/doc/multiple%20button.png)
