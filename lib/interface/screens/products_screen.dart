import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:task1_bloc_training__/interface/widgets/card_widget.dart';
import 'package:task1_bloc_training__/utils/colors/my_colors.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGorundColor,
      appBar: AppBar(
        backgroundColor: backGorundColor,
        elevation: 0,
        title: Text("Man Collection"),
      ),
      body: SafeArea(
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                       childAspectRatio: 2 / 3,
          crossAxisSpacing: 3,
          mainAxisSpacing: 1,
              ),
              itemCount: 2,
              itemBuilder: (context, index) {
                return CardWidget();
              })),
    );
  }
}
