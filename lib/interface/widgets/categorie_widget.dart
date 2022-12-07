import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../utils/sizes/my_sizes.dart';
import '../screens/categories_screen.dart';
import '../screens/products_screen.dart';

class CategorieWidget extends StatelessWidget {
  final String url , name , category;
  const CategorieWidget({Key? key, required this.url, required this.name, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: InkWell(
          onTap: (){
            Navigator.of(context).push(
              MaterialPageRoute(builder: (_)=>ProductsScreen(category: category,name: name,))
            );
          },
          child: Stack(children: [

              Container(
          decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(1),
              // color: Colors.black.withOpacity(0.9),
              image:  DecorationImage(
                opacity: 0.5,
                image: NetworkImage(
                  url,
               
                ),
                 fit: BoxFit.cover
              )),
          child:  Center(
            child: Text(
              name,
              style: TextStyle(
                  fontSize: s18, fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
              )
            ]),
        ));
  }
}