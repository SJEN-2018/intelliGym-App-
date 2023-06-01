import 'package:flutter/material.dart';
import 'package:intelligym_app/app_data.dart';
import 'package:intelligym_app/models/gym.dart';
import 'package:intelligym_app/screens/chat_screen.dart';
import 'package:intelligym_app/screens/store_screen.dart';
import 'package:intelligym_app/widgets/class_card.dart';
import 'package:intelligym_app/widgets/review_card.dart';

class coachProfile extends StatelessWidget {
  const coachProfile({Key? key});

  static const screenRoute = '/coache-profile';

  @override
  Widget build(BuildContext context) {
    final coachId = ModalRoute.of(context)?.settings.arguments as String;
    final coach = COACHESINFO.firstWhere((coach) => coach.id == coachId);

    Widget listVeiw(Widget Child) {
      return Container(
        decoration: BoxDecoration(
            color: Color(0xFFD9D9D9),
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10)),
        height: 250,
        margin: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
        padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
        child: Child,
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          coach.name,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Colors.black,
              ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(coach.Image),
                  fit: BoxFit.cover,
                ),
              ),
              width: double.infinity,
              height: 150,
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        'Contact',
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(color: Colors.black),
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, ChatPage.screenRoute,
                                arguments: {
                                  'recipientName': coach.name,
                                  'recipientPic': coach.Image
                                });
                          },
                          child: Icon(Icons.message))
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Rating',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      Row(
                        children: [
                          Text(
                            coach.rating.toString(),
                            style: TextStyle(fontSize: 20),
                          ),
                          Icon(Icons.star, color: const Color(0xFF1ABC9C))
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Status',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      Text(
                        coach.status,
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                ],
              )),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Hours',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ),
                ),
                listVeiw(
                  ListView.builder(
                    itemCount: coach.Hours.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Text(
                          coach.Hours[index],
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: classCard(),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: reviewCard(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
