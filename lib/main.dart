import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1_bloc_training__/interface/screens/onboard_screen.dart';
import 'package:task1_bloc_training__/repositry/api/network_services.dart';
import 'package:task1_bloc_training__/repositry/bloc/products_cubit.dart';
import 'package:bloc/bloc.dart';
import 'package:task1_bloc_training__/utils/colors/my_colors.dart';
// void main() {
//   NetworkService.initDio();
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const OnBoardScreen(),
//     );
//   }
// }

void main() {
    NetworkService.initDio();

  runApp( MaterialApp(
          debugShowCheckedModeBanner: false,
    home:  MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() =>  _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
     Future.delayed(
        const Duration(seconds: 3),
        () => Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const OnBoardScreen()),
                (Route<dynamic> route) => false,
            ));
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: backGorundColor,
      body: Container(
        child:   Column(children: <Widget>[
          const Divider(
            height: 240.0,
            color:backGorundColor,
          ),
           Image.asset(
            'assets/splash-screen.png',
            fit: BoxFit.cover,
            repeat: ImageRepeat.noRepeat,
            width: 270.0,
            height: 240.0,
          ),
          const Divider(
            height: 105.2,
            color: backGorundColor,
          ),
        ]),
      ),
    );
  }
}
