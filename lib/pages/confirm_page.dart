import 'package:flutter/material.dart';
import 'package:task_payment_page/pages/home_page.dart';
import 'package:task_payment_page/pages/status_page.dart';

class ConfirmPage extends StatefulWidget {

  late String text;
  ConfirmPage({Key? key}) : super(key: key);
  static const String id = "confirm_page";

  @override
  _ConfirmPageState createState() => _ConfirmPageState();
}

class _ConfirmPageState extends State<ConfirmPage> {

  void _openStatusPage() async{
    var result = await Navigator.pushNamed(context, StatusPage.id);
    if (result != null && result == "success") {
      Navigator.pop(context, result);
    }
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Confirm page"),
        ),
        body: Container(
          alignment: Alignment.center,
          child: MaterialButton(
            color: Colors.blue,
            child: const Text("Status", style: TextStyle(color: Colors.white),),
            onPressed: _openStatusPage,
          ),
        ),
      );
  }
  // void _takeData(BuildContext context) async {
  //   // start the SecondScreen and wait for it to finish with a result
  //   final result = await Navigator.push(context, MaterialPageRoute(builder: (context) =>  const StatusPage()));
  //   setState(() {
  //     widget.text = result;
  //   });
  // }
}
