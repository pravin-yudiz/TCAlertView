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
```
 [[TCAlertView sharedInstance] show:@"Toast Messahe" message:@"This toast message" buttonTitles:@[] interval:3.0f btnClick:^(int buttonIndex) {
      NSLog(@"button Index %d",buttonIndex);
  }];
```

```
Give the example
```

And repeat

```
until finished
```

End with an example of getting some data out of the system or using it for a little demo

## Running the tests

Explain how to run the automated tests for this system

### Break down into end to end tests

Explain what these tests test and why

```
Give an example
```

### And coding style tests

Explain what these tests test and why

```
Give an example
```

## Deployment

Add additional notes about how to deploy this on a live system

## Built With

* Dropwizard - Bla bla bla
* Maven - Maybe
* Welcome to the TCAlertView

## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags). 

## Authors

* **Billie Thompson** - *Initial work* - [PurpleBooth](https://github.com/PurpleBooth)

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Hat tip to anyone who's code was used
* Inspiration
* etc
