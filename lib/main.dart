import 'package:flutter/material.dart';
import 'package:intelligym_app/app_data.dart';
import 'package:intelligym_app/screens/Dashboard.dart';
import 'package:intelligym_app/screens/Gym_profile.dart';
import 'package:intelligym_app/screens/chat_screen.dart';
import 'package:intelligym_app/screens/classes_screen.dart';
import 'package:intelligym_app/screens/coache_profile.dart';
import 'package:intelligym_app/screens/coaches_screen.dart';
import 'package:intelligym_app/screens/nutration_profile.dart';
import 'package:intelligym_app/screens/nutration_screen.dart';
import 'package:intelligym_app/screens/payment-method.dart';
import 'package:intelligym_app/screens/payment_status.dart';
import 'package:intelligym_app/screens/reveiw_screen.dart';
import 'package:intelligym_app/screens/store_screen.dart';
import './models/packeges.dart';

void main(List<String> args) {
  Map<String, dynamic>? queryParams;
  if (args.isNotEmpty) {
    queryParams = Uri.splitQueryString(args.first);
  }
  runApp(MyApp(args: queryParams));
}

class MyApp extends StatelessWidget {
  final Map<String, dynamic>? args;
  const MyApp({Key? key, this.args}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'intelliGym App',
      theme: ThemeData(
        primaryColor: const Color(0xFFFFFCF2),
        accentColor: const Color(0xFF16A085),
        appBarTheme: const AppBarTheme(
            color: Color(0xFF1ABC9C),
            titleTextStyle: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.bold)),
        textTheme: ThemeData.light().textTheme.copyWith(
            headline5: const TextStyle(
                color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
            headline6: const TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.bold)),
      ),
      routes: {
        '/': (context) => Dashboard(),
        GymProfile.screenRoute: (context) => GymProfile(),
        coachesScreen.screenRoute: (context) => coachesScreen(),
        nutrationScreen.screenRoute: (context) => nutrationScreen(),
        coachProfile.screenRoute: (context) => coachProfile(),
        nutrationProfile.screenRoute: (context) => nutrationProfile(),
        classesScreen.screenRoute: (context) => classesScreen(),
        ReviewScreen.screenRoute: (context) => ReviewScreen(),
        ChatPage.screenRoute: (context) => ChatPage(
              recipientName: args?['recipientName'] ?? '',
              recipientPic: args?['recipientPic'] ?? '',
            ),
        StoreScreen.screenRoute: (context) => StoreScreen(),
        PaymentPage.screenRoute: (context) => PaymentPage(),
        paymentStatus.screenRoute: (context) => paymentStatus(),
      },
    );
  }
}
