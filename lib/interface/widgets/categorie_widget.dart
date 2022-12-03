import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../screens/categories_screen.dart';
import '../screens/products_screen.dart';

class CategorieWidget extends StatelessWidget {
  const CategorieWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: InkWell(
          onTap: (){
            Navigator.of(context).push(
              MaterialPageRoute(builder: (_)=>ProductsScreen())
            );
          },
          child: Stack(children: [
              //  FittedBox(
              //   fit: BoxFit.fill,
              //    child: Image(
              //     image: NetworkImage(
              //       "https://scontent.fcai19-4.fna.fbcdn.net/v/t39.30808-6/317608294_1242161846685819_369083510121017431_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=5cd70e&_nc_eui2=AeHmFB-zD9R13ST-lawU8I4eeV_DvHlaDgx5X8O8eVoODIlljd23BX71HQghZ1l5PSHOnjnx4oqv75m4t_F8v07S&_nc_ohc=91OHcikLAnwAX831kaB&_nc_ht=scontent.fcai19-4.fna&oh=00_AfBeXYVyEaVlnNq-EJdUgAtfusshlPJbT5OhNfaR4Iim4Q&oe=638E0DAA",
              //     // scale:0.1
              //     ),
              //     // width: 200,
              //     // fit:BoxFit. ,
              //        ),
              //  ),
              Container(
          decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(15),
              // color: Colors.black.withOpacity(0.9),
              image: const DecorationImage(
                opacity: 0.7,
                image: NetworkImage(
                  "https://scontent.fcai19-4.fna.fbcdn.net/v/t39.30808-6/317608294_1242161846685819_369083510121017431_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=5cd70e&_nc_eui2=AeHmFB-zD9R13ST-lawU8I4eeV_DvHlaDgx5X8O8eVoODIlljd23BX71HQghZ1l5PSHOnjnx4oqv75m4t_F8v07S&_nc_ohc=91OHcikLAnwAX831kaB&_nc_ht=scontent.fcai19-4.fna&oh=00_AfBeXYVyEaVlnNq-EJdUgAtfusshlPJbT5OhNfaR4Iim4Q&oe=638E0DAA",
               
                ),
                 fit: BoxFit.cover
              )),
          child: const Center(
            child: Text(
              "Games",
              style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
              )
            ]),
        ));
  }
}