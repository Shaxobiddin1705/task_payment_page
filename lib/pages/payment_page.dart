import 'package:flutter/material.dart';
import 'package:task_payment_page/pages/confirm_page.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);
  static const String id = "payment_page";

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {

  void _openConfirmPage() async{
    var result = await Navigator.pushNamed(context, ConfirmPage.id);
    if (result != null && result == "success") {
      Navigator.pop(context, result);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Payment page"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: MaterialButton(
          color: Colors.blue,
          child: const Text("Confirm", style: TextStyle(color: Colors.white),),
          onPressed: _openConfirmPage,
        ),
      ),
    );
  }
}
