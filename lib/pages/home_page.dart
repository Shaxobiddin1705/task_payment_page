import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:flutter/material.dart';
import 'package:task_payment_page/pages/double_back_click_without_package_home_page.dart';
import 'package:task_payment_page/pages/payment_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Home page"),
      ),
      body: DoubleBackToCloseApp(
        snackBar: const SnackBar(
          content: Text('Tap back again to leave'),
        ),
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MaterialButton(
                color: Colors.blue,
                child: const Text("Payment", style: TextStyle(color: Colors.white),),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const PaymentPage()));
                },
              ),
              MaterialButton(
                color: Colors.blue,
                child: const Text("HomePage2", style: TextStyle(color: Colors.white),),
                onPressed: (){
                  Navigator.popAndPushNamed(context, HomePage2.id);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
