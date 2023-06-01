import 'package:flutter/material.dart';
import 'package:intelligym_app/screens/classes_screen.dart';
import '../app_data.dart';

class classCard extends StatelessWidget {
  const classCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, classesScreen.screenRoute);
      },
      child: Container(
        height: 100,
        padding: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: Color(0xFFD9D9D9),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Align(
              alignment: Alignment.center,
              child: Icon(
                Icons.class_,
                color: Color(0xFF16A085),
                size: 30,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Classes',
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
