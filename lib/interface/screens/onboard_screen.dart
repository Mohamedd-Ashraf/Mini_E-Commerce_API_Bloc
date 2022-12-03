import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:task1_bloc_training__/interface/screens/categories_screen.dart';
import 'package:task1_bloc_training__/utils/colors/my_colors.dart';

class OnBoardScreen extends StatelessWidget {
  const OnBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(elevation: 0, backgroundColor: backGorundColor),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          child: IntroductionScreen(
            // back: const Text('back'),

            pages: [
              PageViewModel(
                  image: Image.network(
                      "https://scontent.fcai19-4.fna.fbcdn.net/v/t39.30808-6/317608294_1242161846685819_369083510121017431_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=5cd70e&_nc_eui2=AeHmFB-zD9R13ST-lawU8I4eeV_DvHlaDgx5X8O8eVoODIlljd23BX71HQghZ1l5PSHOnjnx4oqv75m4t_F8v07S&_nc_ohc=91OHcikLAnwAX831kaB&_nc_ht=scontent.fcai19-4.fna&oh=00_AfBeXYVyEaVlnNq-EJdUgAtfusshlPJbT5OhNfaR4Iim4Q&oe=638E0DAA"),
                  body: 'We provide you to 100% Safe ways for Shopping',
                  title: 'Buy easily and safily',
                  decoration: PageDecoration(
                      boxDecoration: BoxDecoration(
                       
                          borderRadius: BorderRadius.circular(20)))),
              PageViewModel(
                  image: ClipRRect(
                    // decoration: BoxDecoration(
                    //     border: Border.all(width: 5),
                    //   borderRadius: BorderRadius.circular(50),
                    //   // color: Colors.black
                    // ),
                    borderRadius: BorderRadius.circular(50),
                    // shape: ShapeBorder.lerp(),
                    // padding: const EdgeInsets.all(8.0),
                    child: Image.network(
                        "https://scontent.fcai19-4.fna.fbcdn.net/v/t39.30808-6/317608294_1242161846685819_369083510121017431_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=5cd70e&_nc_eui2=AeHmFB-zD9R13ST-lawU8I4eeV_DvHlaDgx5X8O8eVoODIlljd23BX71HQghZ1l5PSHOnjnx4oqv75m4t_F8v07S&_nc_ohc=91OHcikLAnwAX831kaB&_nc_ht=scontent.fcai19-4.fna&oh=00_AfBeXYVyEaVlnNq-EJdUgAtfusshlPJbT5OhNfaR4Iim4Q&oe=638E0DAA"),
                  ),
                  body: 'We provide you to 100% Safe ways for Shopping',
                  title: 'Buy easily and safily'),
              PageViewModel(
                  image: Image.network(
                      "https://scontent.fcai19-4.fna.fbcdn.net/v/t39.30808-6/317608294_1242161846685819_369083510121017431_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=5cd70e&_nc_eui2=AeHmFB-zD9R13ST-lawU8I4eeV_DvHlaDgx5X8O8eVoODIlljd23BX71HQghZ1l5PSHOnjnx4oqv75m4t_F8v07S&_nc_ohc=91OHcikLAnwAX831kaB&_nc_ht=scontent.fcai19-4.fna&oh=00_AfBeXYVyEaVlnNq-EJdUgAtfusshlPJbT5OhNfaR4Iim4Q&oe=638E0DAA"),
                  body: 'We provide you to 100% Safe ways for Shopping',
                  title: 'Buy easily and safily')
            ],
            done: const Text('Next'),
            onDone: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_)=>const CatogriesScreen())
              );
              
            },
            next: const Icon(Icons.navigate_next),
            skip: const Text('Skip'),
            showSkipButton: true,
            dotsDecorator: myDotsDecrator(),
          ),
        ),
      ),
    );
  }

  DotsDecorator myDotsDecrator() {
    return DotsDecorator(
        activeColor: Colors.black,
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        activeSize: const Size(22, 10));
  }
}
