import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotifyCloneUi/provider/current_user.dart';
import 'package:spotifyCloneUi/screens/login_choice_Screen.dart';
import 'package:spotifyCloneUi/screens/main_screen.dart';

enum AuthStatus {
  loggedIn,
  notLoggedIn,
}

class RootScreen extends StatefulWidget {
  @override
  _RootScreenState createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  AuthStatus _authStatus = AuthStatus.notLoggedIn;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    //get the state, check current user, set AuthStatus based on state
    CurrentUser _currentUser = Provider.of<CurrentUser>(context, listen: false);
    String _returnString = _currentUser.onStartUp();
    if (_returnString == "success") {
      setState(() {
        _authStatus = AuthStatus.loggedIn;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget _retVal;

    switch (_authStatus) {
      case AuthStatus.notLoggedIn:
        _retVal = LoginChoiseScreen();
        break;
      case AuthStatus.loggedIn:
        _retVal = MainScreen();
        break;
      default:
    }
    return _retVal;
  }
}
