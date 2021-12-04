import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        color: Color(0xFFCE93D8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Center(
                child: Text(
                  "welcome",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ).tr(),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: FlatButton(
                    height: 45,
                    color: Colors.green,
                    onPressed: () {
                      context.locale = Locale('en', 'US');
                    },
                    child: Text("English"),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: FlatButton(
                    height: 45,
                    color: Colors.red,
                    onPressed: () {
                      context.locale = Locale('kr', 'KR');
                    },
                    child: Text("Korea"),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: FlatButton(
                    height: 45,
                    color: Colors.blue,
                    onPressed: () {
                      context.locale = Locale('jp', 'JP');
                    },
                    child: Text("Japan"),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
