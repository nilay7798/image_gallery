# image_gallery

A new flutter plugin project.

## Getting Started

This project is a starting point for a Flutter
[plug-in package](https://flutter.dev/developing-packages/),
a specialized package that includes platform-specific implementation code for
Android and/or iOS.


## Usage
To use this plugin, add `gallery_view` as a [dependency in your pubspec.yaml file](https://flutter.io/platform-plugins/).

![The example app running in Android](https://github.com/nilay7798/image_gallery/blob/master/docs/gallery_view_demo.gif?raw=true)

### Example

``` dart
import 'package:flutter/material.dart';
import 'package:gallery_view/gallery_view.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Center(
      child: GalleryView(
       imageUrlList:[
                     "https://images.unsplash.com/photo-1500100586562-f75ff6540087?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                     "https://images.unsplash.com/photo-1523719185231-aff40a400361?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                     ]
        ),
      ),
    ),
  ));
}


```


