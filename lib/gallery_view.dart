import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gallery_view/view_photo.dart';

class GalleryView extends StatelessWidget {
  final List<String> imageUrlList;
  final int crossAxisCount;
  const GalleryView(
      {required Key key, required this.imageUrlList, this.crossAxisCount = 3});

  static const MethodChannel _channel = const MethodChannel('gallery_view');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            itemCount: imageUrlList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                crossAxisSpacing: 6.0,
                mainAxisSpacing: 6.0),
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) {
                            return ViewPhotos(
                              imageIndex: index,
                              imageList: imageUrlList,
                              heroTitle: "image$index",
                            );
                          },
                          fullscreenDialog: true));
                },
                child: Container(
                  child: Hero(
                      tag: "photo$index",
                      child: CachedNetworkImage(
                        fit: BoxFit.fill,
                        imageUrl: imageUrlList[index],
                        placeholder: (context, url) => Container(
                            child: Center(child: CupertinoActivityIndicator())),
                        errorWidget: (context, url, error) => Icon(Icons.error),
                      )),
                ),
              );
            }),
      ),
    );
  }
}
