import 'package:flutter/material.dart';
import 'package:intelligym_app/models/categories.dart';
import 'package:intelligym_app/screens/coache_profile.dart';
import '../app_data.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class coachesScreen extends StatelessWidget {
  const coachesScreen({super.key});
  static const screenRoute = '/coaches-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Coaches')),
      body: ListView.builder(
        itemCount: COACHESINFO.length,
        itemBuilder: (BuildContext context, int index) {
          final coach = COACHESINFO[index];
          return InkWell(
            onTap: () {
              Navigator.pushNamed(
                context,
                coachProfile.screenRoute,
                arguments: COACHESINFO[index].id.toString(),
              );
            },
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              elevation: 7,
              margin: EdgeInsets.all(10),
              child: coachContainer(
                coach: coach,
              ),
            ),
          );
        },
      ),
    );
  }
}

class coachContainer extends StatelessWidget {
  const coachContainer({
    Key? key,
    required this.coach,
  });

  final coaches coach;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
              child: Image.network(
                coach.Image,
                height: 400,
                width: double.infinity,
                fit: BoxFit.cover,
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
                  color: Colors.grey.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      coach.name,
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      coach.email,
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black87,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            launch(coach.facebookUrl);
                          },
                          child: IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.facebook,
                              color: Color(0xFF3b5998),
                            ),
                            onPressed: () {
                              // Do something
                            },
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            launch(coach.twitterUrl);
                          },
                          child: IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.twitter,
                              color: Colors.blue,
                            ),
                            onPressed: () {
                              // Do something
                            },
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            launch(coach.linkedinUrl);
                          },
                          child: IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.linkedin,
                              color: Color(0xFF0077B5),
                            ),
                            onPressed: () {
                              // Do something
                            },
                          ),
                        ),
                      ],
                    )
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
