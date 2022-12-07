import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:task1_bloc_training__/repositry/models/product_model.dart';
import 'categorie_widget.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final ProductModel product  ;
  const CardWidget({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20) , color: Colors.grey[300]),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child:  Image(
                  height: 150,
                  width: 150,
                  image: NetworkImage(
                    product.thumbnail,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  product.title,
                     maxLines: 2,
                  style: TextStyle(fontSize: 16 , overflow: TextOverflow.ellipsis, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(1),
                child: Text(
                  
                  product.description,
                  maxLines: 1,
                  style: TextStyle(fontSize: 13 , overflow: TextOverflow.ellipsis  , fontWeight: FontWeight.w500),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$ ${product.price}",
                    style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 150, 0, 0) ,fontWeight: FontWeight.bold),
                  ),
                  IconButton(onPressed: (){}, icon: Icon(Icons.add , color: Colors.black,))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
