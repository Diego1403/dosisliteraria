import 'package:flutter/material.dart';
import 'api/api.dart';
import 'app.dart';

//
class StartScreen extends StatefulWidget {
  _StartState createState() => _StartState();
}

class _StartState extends State<StartScreen> {
  @override
  void initState() {
    super.initState();
    API.instance().then((api) async {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => Application(api)));
    });
  }

  @override
  Widget build(context) {
    return Center(
      child: Image.asset('assets/app_icon_trans.png'),
    );
  }
}
