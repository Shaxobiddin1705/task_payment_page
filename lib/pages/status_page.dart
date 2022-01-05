import 'package:flutter/material.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({Key? key}) : super(key: key);
  static const String id = "status_page";

  @override
  _StatusPageState createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {

  secureScreen() async {
    await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    secureScreen();
  }

  @override
  Widget build(BuildContext context) {
    return _statusPage();
  }
  Widget _statusPage() {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Status page"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: MaterialButton(
                color: Colors.blue,
                child: const Text("Success", style: TextStyle(color: Colors.white),),
                onPressed: (){
                  Navigator.pop(context, "success");
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: MaterialButton(
                color: Colors.blue,
                child: const Text("Fail", style: TextStyle(color: Colors.white),),
                onPressed: (){
                  Navigator.pop(context, "fail");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
