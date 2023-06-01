import 'package:flutter/material.dart';
import 'package:intelligym_app/models/gym.dart';
import 'package:intelligym_app/screens/Gym_profile.dart';
import '../app_data.dart';

class gymCard extends StatelessWidget {
  const gymCard(
      {super.key,
      required this.id,
      required this.gymName,
      required this.gymImage,
      required this.gymRating});
  final String id;
  final String gymName;
  final String gymImage;
  final double gymRating;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          GymProfile.screenRoute,
          arguments: id,
        );
      },
      child: SizedBox(
        height: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                height: 25,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                    image: NetworkImage(gymImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                gymName,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    color: const Color(0xFF1ABC9C),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(gymRating.toString()),
                  SizedBox(width: 100),
                  ElevatedButton.icon(
                    onPressed: () {
                      // TODO: Handle location button press
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF16A085),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    icon: Icon(Icons.location_on),
                    label: Text('Select location'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
