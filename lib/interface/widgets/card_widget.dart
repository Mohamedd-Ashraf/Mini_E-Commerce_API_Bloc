import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'categorie_widget.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20) , color: Colors.grey[300]),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: const Image(
                  image: NetworkImage(
                    "https://scontent.fcai19-4.fna.fbcdn.net/v/t39.30808-6/317608294_1242161846685819_369083510121017431_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=5cd70e&_nc_eui2=AeHmFB-zD9R13ST-lawU8I4eeV_DvHlaDgx5X8O8eVoODIlljd23BX71HQghZ1l5PSHOnjnx4oqv75m4t_F8v07S&_nc_ohc=91OHcikLAnwAX831kaB&_nc_ht=scontent.fcai19-4.fna&oh=00_AfBeXYVyEaVlnNq-EJdUgAtfusshlPJbT5OhNfaR4Iim4Q&oe=638E0DAA",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  "TIIIIIITLE",
                  style: TextStyle(fontSize: 10),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(1),
                child: Text(
                  "Sub  sadasd TIIIIIITLE",
                  style: TextStyle(fontSize: 5),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$ 213",
                    style: TextStyle(fontSize: 14, color: Colors.orange),
                  ),
                  IconButton(onPressed: (){}, icon: Icon(Icons.add , color: Colors.black,))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
