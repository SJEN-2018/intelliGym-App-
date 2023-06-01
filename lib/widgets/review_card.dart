import 'package:flutter/material.dart';
import 'package:intelligym_app/screens/reveiw_screen.dart';
import '../app_data.dart';

class reviewCard extends StatelessWidget {
  const reviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, ReviewScreen.screenRoute);
      },
      child: Container(
        height: 100,
        padding: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: Color(0xFF16A085),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Align(
              alignment: Alignment.center,
              child: Icon(
                Icons.reviews,
                color: Colors.white,
                size: 30,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Reviews',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Tap here to show the classes',
                style: TextStyle(fontSize: 10),
              ),
            )
          ],
        ),
      ),
    );
  }
}
