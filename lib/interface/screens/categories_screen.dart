import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/categorie_widget.dart';

class CatogriesScreen extends StatelessWidget {
  const CatogriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: const [
             CategorieWidget( category: "laptops",name: "Laptops", url: "https://api.time.com/wp-content/uploads/2017/05/laptops.jpg"),
             CategorieWidget(category: "smartphones" ,name: "Smart Phone" , url: "https://images.ctfassets.net/wcfotm6rrl7u/2sDJE99xaUTEDxrkiopmtK/be3cba35562ec25a738ac957d93d7964/april_8th_launch-og_image.jpg?w=1200", ),
             CategorieWidget(category: "mens-watches", name: "Men's Watches",url: "https://hips.hearstapps.com/amv-prod-gp.s3.amazonaws.com/gearpatrol/wp-content/uploads/2018/08/Guide-to-Quartz-Watches-gear-patrol-lead-full.jpg"),
             CategorieWidget(category: "womens-bags",name: "Women's Bags" , url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBaYdZnoKEutApMckGxOnX6TUz5N9OoYPZmQ&usqp=CAU",),
         
          ],
        ),
      ),
    );
  }


}
