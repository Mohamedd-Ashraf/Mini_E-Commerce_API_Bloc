import 'package:blinking_text/blinking_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:neon/neon.dart';
import 'package:readmore/readmore.dart';
import 'package:task1_bloc_training__/repositry/models/product_model.dart';
import 'package:task1_bloc_training__/utils/colors/my_colors.dart';

import '../widgets/image_slider.dart';

class ProductDetails extends StatelessWidget {
  final ProductModel product;
  const ProductDetails({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: backGorundColor,
        centerTitle: true,
        title: Text(
          product.title,
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(children: [
        SizedBox(
          height: 30,
        ),
        ImageSliderWidget(
          images: product.images,
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: ReadMoreText(
            product.description,
            preDataTextStyle:
                TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            postDataTextStyle:
                TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            trimLines: 1,
            colorClickableText: Colors.pink,
            trimMode: TrimMode.Line,
            trimCollapsedText: '.... Show more',
            trimExpandedText: '.... Show less',
            moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 200,
        ),
        Row(
          children: [
       
            Text(
              "Rate :   ",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 5,
            ),
            // BlinkText(product.rating.toString(),
            //     style: TextStyle(fontSize: 20.0, color: Colors.redAccent),
            //     beginColor: Colors.black,
            //     endColor: Colors.orange,
            //     times: 10,
            //     duration: Duration(seconds: 1)),
                 Neon(
    text: product.rating.toString(),
    color: Colors.orange,
    fontSize: 20,
    blurRadius: 25,
    font: NeonFont.NightClub70s,
    flickeringText: true,
    flickeringLetters: [1,2,3,0],
),
//TODO ارزع ال Stock و اي حاجة من الموديل
            SizedBox(
              width: 10,
            ),
            RatingBar.builder(
              initialRating: product.rating,
              minRating: 1,
              itemSize: 25,
              ignoreGestures: true,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                //  print(rating);
              },
            ),
          ],
        )
      ]),
    );
  }
}
