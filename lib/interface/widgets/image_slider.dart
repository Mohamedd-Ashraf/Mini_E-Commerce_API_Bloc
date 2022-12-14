import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ImageSliderWidget extends StatelessWidget {
  final List<dynamic> images;
   ImageSliderWidget({Key? key, required this.images}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = images.map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(item, fit: BoxFit.cover, width: 1000.0 , height: 500,),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),

                      ),
                    ),
                  ],
                )),
          ),
        ))
    .toList();
    return CarouselSlider(
  options: CarouselOptions(
                autoPlay: true,
            aspectRatio: 2.0,
            enlargeCenterPage: true,

      scrollDirection: Axis.horizontal,
   ),
  items: imageSliders

) ;

  
}}