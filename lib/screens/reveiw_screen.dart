import 'package:flutter/material.dart';
import '../app_data.dart';

class ReviewScreen extends StatelessWidget {
  @override
  static const screenRoute = '/reviews-screen';

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reviews'),
      ),
      body: ListView.builder(
        itemCount: reviews.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xFFD9D9D9),
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(15)),
              height: 150,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(reviews[index].userImage),
                ),
                title: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 13, horizontal: 4),
                  child: Text(reviews[index].username),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: List.generate(
                        reviews[index].starRating,
                        (i) => Icon(Icons.star,
                            color: Color(0xFF1ABC9C), size: 16.0),
                      ),
                    ),
                    SizedBox(height: 4.0),
                    Text(reviews[index].reviewText),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(16.0),
        child: TextFormField(
          decoration: InputDecoration(
            labelText: 'Write a review',
            suffixIcon: IconButton(
              icon: Icon(Icons.send),
              onPressed: () {
                // TODO: Submit review to database or API
              },
            ),
          ),
        ),
      ),
    );
  }
}
