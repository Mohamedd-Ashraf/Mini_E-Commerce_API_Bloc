import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1_bloc_training__/interface/screens/onboard_screen.dart';
import 'package:task1_bloc_training__/repositry/api/network_services.dart';
import 'package:task1_bloc_training__/repositry/bloc/products_cubit.dart';
// import 'package:bloc/bloc.dart';
void main() {
  NetworkService.initDio();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductsCubit()..getProducts("mens-watches"),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const OnBoardScreen(),
      ),
    );
  }
}
