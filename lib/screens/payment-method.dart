import 'package:flutter/material.dart';
import 'package:intelligym_app/screens/payment_status.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);
  static const screenRoute = '/paymentM-screen';

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  int _paymentMethod = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color(0xFFD9D9D9),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.credit_card_outlined,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Credit Card',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 140,
                      ),
                      Radio(
                          value: 0,
                          groupValue: _paymentMethod,
                          onChanged: (value) {
                            setState(() {
                              _paymentMethod = value!;
                            });
                          })
                    ],
                  ),
                  SizedBox(height: 16),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xFF2C3E50), width: 2),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Your Name',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xFF2C3E50), width: 2),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Credit Card Number',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border:
                                Border.all(color: Color(0xFF2C3E50), width: 2),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: 'Exp Date',
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border:
                                Border.all(color: Color(0xFF2C3E50), width: 2),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: 'CVV',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 32),
            GestureDetector(
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color(0xFFD9D9D9),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.paypal_outlined,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Paypal',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 180,
                    ),
                    Radio(
                        value: 1,
                        groupValue: _paymentMethod,
                        onChanged: (value) {
                          setState(() {
                            _paymentMethod = value!;
                          });
                        })
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            GestureDetector(
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color(0xFFD9D9D9),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.apple_sharp,
                    ),
                    SizedBox(width: 16),
                    Text(
                      'Apple Pay',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 145,
                    ),
                    Radio(
                        value: 1,
                        groupValue: _paymentMethod,
                        onChanged: (value) {
                          setState(() {
                            _paymentMethod = value!;
                          });
                        })
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Row(
              children: [
                SizedBox(
                  width: 100,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, paymentStatus.screenRoute);
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(150, 50),
                    primary: Color(0xFF16A085),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Pay Now',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
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
