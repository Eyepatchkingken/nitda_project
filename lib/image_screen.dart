import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:photo_view/photo_view.dart';
import 'package:flutter/src/gestures/events.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ImageScreen extends StatefulWidget {
  final List<String> imagePaths;
  final String appBarTitle;
  final Color appBarColor;
  final Color sliderBackgroundColor;

  ImageScreen({
    required this.imagePaths,
    required this.appBarTitle,
    required this.appBarColor,
    required this.sliderBackgroundColor,
  });

  @override
  _ImageScreenState createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.appBarTitle),
        backgroundColor: widget.appBarColor,
      ),
      body: Stack(
        children: [
          Center(
            child: CarouselSlider(
              items: widget.imagePaths.map((imagePath) {
                return Container(
                  child: PhotoView(
                    backgroundDecoration: BoxDecoration(
                    color: widget.sliderBackgroundColor,
                  ),
                    imageProvider: AssetImage(imagePath),),
                );
              }).toList(),
              options: CarouselOptions(
                height: 468,
                aspectRatio: 16 / 9,
                viewportFraction: 0.9,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                scrollDirection:
                    Axis.horizontal, // Rest of your CarouselOptions code
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(145.0, 0.0, 30, 0.0),
            child: Container(
              margin: EdgeInsets.only(bottom: 50.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: FractionallySizedBox(
                  widthFactor: 0.6, // Adjust the width factor as needed
                  child: SmoothPageIndicator(
                    count: widget.imagePaths.length,
                    controller: PageController(initialPage: _currentIndex),
                    effect: JumpingDotEffect(
                      // Configure the effect properties
                      dotWidth: 15,
                      dotHeight: 15,
                      activeDotColor: Colors.green.shade900,
                      dotColor: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

