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
    return Scaffold(
      appBar: AppBar(elevation: 0, backgroundColor: backGorundColor),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        child: IntroductionScreen(
          // back: const Text('back'),

          pages: [
            PageViewModel(
                image: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                      "https://thumbs.dreamstime.com/b/isolated-white-background-watercolor-mens-watches-element-design-father-s-day-day-birth-man-182353994.jpg"),
                ),
                body: 'Cause Time Is Gold Our Response Will Be Immeidatly',
                title: 'Time Matter',
                decoration: PageDecoration(
                    boxDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20)))),
            PageViewModel(
                image: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                      "https://en.pimg.jp/040/425/067/1/40425067.jpg"),
                ),
                body:
                    'We provide you to 100% Safe and Protected ways for your Shopping',
                title: 'Buy Saifly'),
            PageViewModel(
                image: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                      "https://media.istockphoto.com/id/1239643055/vector/snapping-finger-easy-gesture-sketch.jpg?s=612x612&w=0&k=20&c=8ExjIVYBl1zEJ2eSd-MIVOUCzSUslfXEO34096Tz5Qc="),
                ),
                body: 'You Can Order What You Want By Few Clicks',
                title: 'Easy Like Finger snap')
          ],
          done: const Text('Next'),
          onDone: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const CatogriesScreen()));
          },
          next: const Icon(Icons.navigate_next),
          skip: const Text('Skip'),
          showSkipButton: true,
          dotsDecorator: myDotsDecrator(),
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
