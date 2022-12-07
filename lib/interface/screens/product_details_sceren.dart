import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:blinking_text/blinking_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:neon/neon.dart';
import 'package:readmore/readmore.dart';
import 'package:task1_bloc_training__/repositry/models/product_model.dart';
import 'package:task1_bloc_training__/utils/colors/my_colors.dart';

import '../../utils/sizes/my_sizes.dart';
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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               SizedBox(
                height: s30,
              ),
              ImageSliderWidget(
                images: product.images,
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding:  EdgeInsets.all(s10),
                child: ReadMoreText(
                  product.description,
                  style:
                       TextStyle(fontSize: s18, fontWeight: FontWeight.bold),

                  preDataTextStyle:
                       TextStyle(fontSize: s18, fontWeight: FontWeight.bold),
                  postDataTextStyle:
                       TextStyle(fontSize: s18, fontWeight: FontWeight.bold),
                  trimLines: 1,
                  // colorClickableText: Color.fromARGB(255, 255, 255, 255),
                  trimMode: TrimMode.Line,
                  trimCollapsedText: '.... Show more',
                  trimExpandedText: '.... Show less',
                  moreStyle:
                       TextStyle(fontSize: s14, fontWeight: FontWeight.bold),
                  lessStyle:
                       TextStyle(fontSize: s14, fontWeight: FontWeight.bold),
                ),
              ),
                     SizedBox(
                width: s15,
              ),
           
                 Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Text(
                    "Rate :   ",
                    style: TextStyle(fontSize: s15, fontWeight: FontWeight.bold),
                  ),
                   SizedBox(
                    width: s5,
                  ),

                  Neon(
                    text: product.rating.toString(),
                    color: Colors.orange,
                    fontSize: s20,
                    blurRadius: s25,
                    font: NeonFont.NightClub70s,
                    flickeringText: true,
                    flickeringLetters: const [1, 2, 3, 0],
                  ),
                  //TODO ارزع ال Stock و اي حاجة من الموديل
                   SizedBox(
                    width: s10,
                  ),
                  RatingBar.builder(
                    initialRating: product.rating,
                    minRating: 1,
                    itemSize: 25,
                    ignoreGestures: true,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      //  print(rating);
                    },
                  ),
                ],
              ),
               SizedBox(
                height: s10,
              ),
              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                   Text(
                    "Brand :  ",
                    style: TextStyle(fontSize: s15, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    // width: double.infinity,
                    child: DefaultTextStyle(
                      style:  TextStyle(
                          fontSize: s20,
                          fontFamily: 'Bobbers',
                          color: Colors.black),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText(product.brand.toString()),
                        ],
                     
                      ),
                    ),
                  ),
                ],
              ),
        
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 180,
                decoration: BoxDecoration(
                    color: Colors.grey, borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                         Text("Price :  ",
                            style: TextStyle(
                                fontSize: s20, fontWeight: FontWeight.bold)),
                        Text(
                          product.price.toString(),
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                         SizedBox(
                          width: s2,
                        ),
                        Text(
                           (product.price +
                                    (product.price *
                                        (product.discountPercentage / 100))).toInt()
                                .toString(),
                            style: const TextStyle(
                                decoration: TextDecoration.lineThrough)),
                      ],
                    ),
                  ),
                ),
              ),
    
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      product.stock.toString(),
                      style:  TextStyle(
                          fontSize: s15, fontWeight: FontWeight.bold),
                    ),
                     SizedBox(
                      width: s2,
                    ),
                     Text(
                      " Item Is Avilable In Stock",
                      style: TextStyle(fontSize: s10, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
