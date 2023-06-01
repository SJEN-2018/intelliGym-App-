import 'package:flutter/material.dart';
import 'package:intelligym_app/models/categories.dart';
import 'package:intelligym_app/screens/coaches_screen.dart';
import '../app_data.dart';

class coachesCard extends StatelessWidget {
  const coachesCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    int coachesNum = COACHESINFO.length;
    int nutrationNum = NUTRATIONINFO.length;
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          coachesScreen.screenRoute,
        );
      },
      child: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Color(0xFF1ABC9C),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Icon(
                Icons.group,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Popular Coaches',
              style: Theme.of(context).textTheme.headline5,
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '$coachesNum Coaches',
                style: TextStyle(fontSize: 15),
              ),
            )
          ],
        ),
      ),
    );
  }
}
