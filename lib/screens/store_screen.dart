import 'package:flutter/material.dart';
import 'package:intelligym_app/screens/payment-method.dart';
import '../app_data.dart';

class StoreScreen extends StatelessWidget {
  static const screenRoute = '/store-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Store'),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Subscription',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: packInfo.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 12),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFD9D9D9),
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(15)),
                      height: 120,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                packInfo[index].name,
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                'Coins: ${packInfo[index].coins}',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                'Expiry: ${packInfo[index].expiry} days',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Image.network(
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/Font_Awesome_5_solid_coins.svg/1024px-Font_Awesome_5_solid_coins.svg.png',
                            width: 50,
                            height: 50,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'JD',
                              ),
                              ElevatedButton.icon(
                                onPressed: () {
                                  Navigator.pushNamed(
                                    context,
                                    PaymentPage.screenRoute,
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: const Color(0xFF16A085),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                icon: Icon(Icons.add_shopping_cart),
                                label: Text('Buy'),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ));
  }
}
