import 'package:flutter/material.dart';
import '../app_data.dart';

class paymentStatus extends StatelessWidget {
  const paymentStatus({super.key});
  static const screenRoute = '/paymentS-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Payment status'),
          leading: IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              Navigator.popUntil(
                context,
                ModalRoute.withName(
                    '/store-screen'), // Replace with the desired page route
              );
            },
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 80,
            ),
            Container(
              width: 200,
              height: 200,
              child: Image.network(
                'https://cdn-icons-png.flaticon.com/128/463/463574.png',
                // replace with your image URL
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Payment Confirmed',
              style: TextStyle(
                color: Color(0xFF1ABC9C),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Text(
                '24 JD',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Your Payment has been confirmed, it may take 1-2 hours in order for your payment to go through and show up in your transation list.',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color(0xFFD9D9D9),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBlxLnuvT61lXz3J_QU5PXTIYxE5x32cqDZqIX6ulq2TU_W-0GnzYe9LjWT_UfSGHruQY&usqp=CAU',
                        width: 50,
                        height: 50,
                      ),
                      SizedBox(width: 15),
                      Text(
                        'Mastercard Ending in 4021',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '\$24',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
