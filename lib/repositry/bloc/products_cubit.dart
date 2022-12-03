import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:task1_bloc_training__/repositry/api/network_services.dart';
import 'package:task1_bloc_training__/repositry/bloc/products_states.dart';
import 'package:task1_bloc_training__/repositry/models/product_model.dart';

class ProductsCubit extends Cubit<ProductsState>  {
  ProductsCubit() : super(InitProductsState());
  List <ProductModel> productsList = [];
  void getProducts(String category) async{
        emit(LodaingProductsState());
    Response response = await NetworkService.getData(endPoint: 'mens-watches');
    print(response.statusCode);
    print(response);
    if(response.statusCode ==200){

      List result =( response.data ) as List;
      productsList = result.map((product) => ProductModel.fromJson(product)).toList();
    print(response.statusCode);

      emit(ProductsAreLoadedState());
    }
  }
  
}