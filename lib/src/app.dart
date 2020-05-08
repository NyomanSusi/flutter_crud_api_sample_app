import 'package:flutter/material.dart';
import 'package:flutter_crud_api_sample_app/src/ui/formadd/from_add_screen.dart';
import 'package:flutter_crud_api_sample_app/src/ui/home/home_screen.dart';

GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.red[300],
        accentColor: Colors.red,
      ),
      home: Scaffold(
        key: _scaffoldState,
        appBar: AppBar(
          title: Text(
            "FLUTTER CRUD API",
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          actions: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(
                  _scaffoldState.currentContext,
                  MaterialPageRoute(builder: (BuildContext context) {
                    return FormAddScreen();
                  }),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Icon(
                  Icons.add,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
        body: HomeScreen(),
      ),
    );
  }
}