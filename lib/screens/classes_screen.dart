import 'package:flutter/material.dart';
import 'package:intelligym_app/models/class.dart';
import '../app_data.dart';

class classesScreen extends StatelessWidget {
  const classesScreen({super.key});
  static const screenRoute = '/class-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('classes'),
      ),
      body: ListView.builder(
        itemCount: CLASSES.length,
        itemBuilder: (BuildContext context, int index) {
          final classes = CLASSES[index];
          return Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            elevation: 7,
            margin: EdgeInsets.all(10),
            child: classContainer(
              classes: classes,
            ),
          );
        },
      ),
    );
  }
}

class classContainer extends StatelessWidget {
  const classContainer({
    Key? key,
    required this.classes,
  });

  final Classes classes;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white,
                    Colors.black.withOpacity(0.9),
                  ],
                ),
              ),
              child: Image.network(
                classes.Image,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              classes.name,
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w500,
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                margin: EdgeInsets.all(15),
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 8.0),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        classes.time,
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        classes.day,
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
