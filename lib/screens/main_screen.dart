import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotifyCloneUi/provider/current_user.dart';
import 'package:spotifyCloneUi/screens/root_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Logged In'),
              SizedBox(height: 20.0),
              RaisedButton(
                onPressed: () async {
                  CurrentUser _currentUser =
                      Provider.of<CurrentUser>(context, listen: false);
                  String _resultString = await _currentUser.signOut();
                  if (_resultString == "success") {
                    Navigator.pushAndRemoveUntil(
                      context,
                      CupertinoPageRoute(builder: (context) => RootScreen()),
                      (route) => false,
                    );
                  }
                },
                child: Text('Sign Out'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
