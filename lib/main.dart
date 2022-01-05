import 'package:flutter/material.dart';
import 'package:task_payment_page/pages/confirm_page.dart';
import 'package:task_payment_page/pages/double_back_click_without_package_home_page.dart';
import 'package:task_payment_page/pages/home_page.dart';
import 'package:task_payment_page/pages/payment_page.dart';
import 'package:task_payment_page/pages/status_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: {
        HomePage.id: (context) => const HomePage(),
        PaymentPage.id: (context) => const PaymentPage(),
        ConfirmPage.id: (context) => ConfirmPage(),
        StatusPage.id: (context) => const StatusPage(),
        HomePage2.id: (context) => const HomePage2(),
      },
    );
  }
}
