import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/Material.dart';

class CurrentUser extends ChangeNotifier {
  String _uid;
  String _email;

  String get getUid => _uid;
  String get getEmail => _email;

  FirebaseAuth _auth = FirebaseAuth.instance;

  //signs up user using email and password
  Future<String> signUpUserWithEmail(String email, String password) async {
    String retVal = "error";
    try {
      UserCredential _userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);
      if (_userCredential.user != null) {
        retVal = "success";
      }
    } catch (e) {
      retVal = e.message;
    }
    return retVal;
  }

  //logins user using email and password
  Future<String> loginUserWithEmail(String email, String password) async {
    String retVal = "error";

    try {
      UserCredential _userCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      if (_userCredential.user != null) {
        _uid = _userCredential.user.uid;
        _email = _userCredential.user.email;
        retVal = "success";
      }
    } catch (e) {
      retVal = e.message;
    }
    return retVal;
  }
}
