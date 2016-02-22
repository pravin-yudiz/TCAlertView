# TCAlertView

TCAlertView is alternative of UIAlertView,main feature is you can no need to implement alerview delegate for identify which button was tap

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

## Feature of TCAlertView

* Toast Message Without Button
* Toast Message With Button
* UIAlertView With One Button
* UIAlertView With Two Button
* UIAlertView With Multiple Button

* Toast Message Without Button
```
 [[TCAlertView sharedInstance] show:@"Toast Messahe" message:@"This toast message" buttonTitles:@[] interval:3.0f btnClick:^(int buttonIndex) {
      NSLog(@"button Index %d",buttonIndex);
  }];
```

* Toast Message With Button
```
 [[TCAlertView sharedInstance] show:@"Toast Messahe" message:@"This toast message" buttonTitles:@[@"OK",@"Cancel"] interval:3.0f btnClick:^(int buttonIndex) {
                NSLog(@"button Index %d",buttonIndex);
            }];
```
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
