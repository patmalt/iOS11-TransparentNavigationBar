# iOS 11 Navigation Bar Transition Issues

This project was created to demonstrate issues with transitioning between transparent and opaque navigation bar styles.

## Issue List

* Black bar in navigation bar section when transitioning between Opaque and Transparent Navigation Bar looks awful. Putting the Navigation Bar color transition in an animation block used to improve this, but no longer does in iOS 11.0.
* ViewWillAppear changing the transparency and opacity is not working on initial launch
* Hack to allow for Opaque title text but transparent navigation bar by making first subview of navigation bar transparent prior to iOS 11.0 no longer works (see here: https://stackoverflow.com/questions/17460209/change-the-alpha-value-of-the-navigation-bar)

## Video of Issues

https://youtu.be/hJeTjD4KYfk

## To run

Just download the app, open it in XCode 9.0, and run in simulator or on device
