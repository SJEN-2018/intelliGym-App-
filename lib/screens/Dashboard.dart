import 'package:flutter/material.dart';
import 'package:intelligym_app/models/categories.dart';
import 'package:intelligym_app/widgets/coaches_card.dart';
import '../widgets/gym_card.dart';
import '../app_data.dart';
import '../widgets/nutration_card.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Dashboard')),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 44, horizontal: 16),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: const Color(0xFF16A085),
                    radius: 25,
                    child: Icon(Icons.person, color: Colors.white),
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Text(
                    'name',
                    style: Theme.of(context).textTheme.headline5,
                  )
                ],
              ),
            ),
            Card(
              color: Color(0xFFD9D9D9),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Find nearby gyms...',
                    border: InputBorder.none,
                    icon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Nearby Gyms',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
            ),
            Expanded(
              child: PageView(
                scrollDirection: Axis.horizontal,
                children: GYMINFO
                    .map((gymInfo) => Padding(
                          padding: EdgeInsets.all(16),
                          child: gymCard(
                              id: gymInfo.id,
                              gymName: gymInfo.name,
                              gymImage: gymInfo.Image,
                              gymRating: gymInfo.rating),
                        ))
                    .toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Categories',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: coachesCard(),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: nutrationCard(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
