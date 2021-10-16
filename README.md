# Image Gallery View Widget
A new plugin to show the list of network image and show it in a gallery view with hero animation



## Getting Started
    Feature
    1. Show user list of network image using urls in gallery view
    2. Added Hero animation for smooth transition effect.
    3. User able to zoom into image and swipe left and right to swipe between images.
    4. Also showing loading icon while image is loading from url.


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
                    "https://images.unsplash.com/photo-1500100586562-f75ff6540087?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                     "https://images.unsplash.com/photo-1523719185231-aff40a400361?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                     "https://images.unsplash.com/photo-1500100586562-f75ff6540087?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                     "https://images.unsplash.com/photo-1523719185231-aff40a400361?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                     "https://images.unsplash.com/photo-1500100586562-f75ff6540087?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                     "https://images.unsplash.com/photo-1523719185231-aff40a400361?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                    
                   ]
        ),
      ),
    ),
  ));
}


```

![The example app running in Android](https://github.com/nilay7798/image_gallery/blob/master/doc/gallery_view_demo.gif?raw=true)

### More screenshots


| **Image Gallery View** | **View Image** | **Hero animation** |
| ------------- | ------------- | ------------- |
| ![In action](https://github.com/nilay7798/image_gallery/blob/master/doc/gallery_view.png) | ![In action](https://github.com/nilay7798/image_gallery/blob/master/doc/view_photo.png) | ![In action](https://github.com/nilay7798/image_gallery/blob/master/doc/hero_animation.png) |

## Usage
To use this plugin, add `gallery_view` as a [dependency in your pubspec.yaml file](https://flutter.io/platform-plugins/).


