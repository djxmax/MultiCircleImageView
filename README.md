# MultiCircleImageView

[![CI Status](https://travis-ci.org/djxmax/MultiCircleImageView.svg?style=flat)](https://travis-ci.org/Maxime Lucquin/MultiCircleImageView)
[![Version](https://img.shields.io/cocoapods/v/MultiCircleImageView.svg?style=flat)](http://cocoapods.org/pods/MultiCircleImageView)
[![License](https://img.shields.io/cocoapods/l/MultiCircleImageView.svg?style=flat)](http://cocoapods.org/pods/MultiCircleImageView)
[![Platform](https://img.shields.io/cocoapods/p/MultiCircleImageView.svg?style=flat)](http://cocoapods.org/pods/MultiCircleImageView)

## Overview

MultiCicrlceImageView allow you to put until 5 images in a small area. It principally made for messaging list with one or more users.

![](MultiCircleImageViewScreen.gif?raw=true "MultiCircleImageView screenshot")


## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

* iOS9
* ARC

## Installation

MultiCircleImageView is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "MultiCircleImageView"
```
Swift 2.2 -> v0.1.2
Swift 2.3 -> v0.1.3

## Usage

```Swift
import MultiCircleImageView

@IBOutlet weak var testView: UIView!

let imageList = [UIImage(named: "your_image")!]

let test = MultiCircleImageView(frame: testView.frame)
test.addView(testView, imageList: imageList)

```

You can retreive imageView like this :

```Swift
let imageViewList = test.addView(testView, imageList: imageList)
```
imgeViewList is an array of UIImageView

## Author

Maxime Lucquin, maxime.lucquin@gmail.com

## License

MultiCircleImageView is available under the MIT license. See the LICENSE file for more info.
