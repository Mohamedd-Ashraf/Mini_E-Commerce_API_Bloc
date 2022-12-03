import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1_bloc_training__/interface/widgets/card_widget.dart';
import 'package:task1_bloc_training__/repositry/bloc/products_cubit.dart';
import 'package:task1_bloc_training__/repositry/bloc/products_states.dart';
import 'package:task1_bloc_training__/utils/colors/my_colors.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) {
        return  Scaffold(
          backgroundColor: backGorundColor,
          appBar: AppBar(
            backgroundColor: backGorundColor,
            elevation: 0,
            title: Text("Man Collection"),
          ),
          body:(state is ProductsAreLoadedState)? SafeArea(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2 / 3,
                    crossAxisSpacing: 3,
                    mainAxisSpacing: 1,
                  ),
                  itemCount: context.watch<ProductsCubit>().productsList.length,
                  itemBuilder: (context, index) {
                    return CardWidget(product: context.watch<ProductsCubit>().productsList[index] ,);
                  },
                  ),
                  ): Center(
                      child: CircularProgressIndicator(
                        color: Colors.black,
                      ),
                    ),
        );
      },
    );
  }
}
