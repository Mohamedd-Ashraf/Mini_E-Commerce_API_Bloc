import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1_bloc_training__/interface/widgets/card_widget.dart';
import 'package:task1_bloc_training__/repositry/bloc/products_cubit.dart';
import 'package:task1_bloc_training__/repositry/bloc/products_states.dart';
import 'package:task1_bloc_training__/utils/colors/my_colors.dart';

import '../../utils/sizes/my_sizes.dart';

class ProductsScreen extends StatelessWidget {
  final String category, name;
  const ProductsScreen({Key? key, required this.category, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductsCubit()..getProducts(category),
      child: BlocBuilder<ProductsCubit, ProductsState>(
        builder: (context, state) {
          return Scaffold(
              backgroundColor: backGorundColor,
              appBar: AppBar(
                backgroundColor: backGorundColor,
                elevation: 0,
                centerTitle: true,
                title: Text(
                  name,
                  style: TextStyle(color: Colors.black),
                ),
              ),
              body: (state is ProductsAreLoadedState)
                  ? SafeArea(
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 2 / 3,
                          crossAxisSpacing: 3,
                          mainAxisSpacing: 1,
                        ),
                        itemCount:
                            context.watch<ProductsCubit>().productsList.length,
                        itemBuilder: (context, index) {
                          return CardWidget(
                            product: context
                                .watch<ProductsCubit>()
                                .productsList[index],
                          );
                        },
                      ),
                    )
                  : (state is LodaingProductsState)
                      ? Center(
                          child: CircularProgressIndicator(
                            color: Colors.black,
                          ),
                        )
                      :
                         Center(
                            child: Column(children: [
                              Image.asset("assets/404-Error-0.jpg"),
                               SizedBox(
                                height: s10,
                              ),
                             const Padding(
                                padding:  EdgeInsets.all(8.0),
                                child:  Text(
                                    "SomeThing Happend Please Try again Later" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 25),),
                              )
                            ]),
                          ),
                        );
        },
      ),
    );
  }
}
