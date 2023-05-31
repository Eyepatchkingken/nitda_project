import 'package:flutter/material.dart';

class ImageScreen extends StatefulWidget {
  final String imagePath;
  final String appBarTitle;
  final Color appBarColor;

  ImageScreen(
      {required this.imagePath,
      required this.appBarTitle,
      required this.appBarColor});

  @override
  _ImageScreenState createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.appBarTitle),
        backgroundColor: widget.appBarColor,
      ),
      body: Center(
        child: InteractiveViewer(
          child: Image.asset(widget.imagePath),
          boundaryMargin:
              EdgeInsets.all(10), // Optional: Set a margin around the image
          minScale: 0.5, // Optional: Set the minimum scale value
          maxScale: 3.0,
        ), // Optional: Set the maximum scale value// or Image.network(widget.imagePath) for network image
      ),
    );
  }
}
