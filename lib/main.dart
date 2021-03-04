import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotifyCloneUi/provider/current_user.dart';
import 'package:spotifyCloneUi/screens/root_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CurrentUser(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.dark(),
        darkTheme: ThemeData(
          scaffoldBackgroundColor: Colors.black,
          textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white)),
        ),
        themeMode: ThemeMode.dark,
        home: RootScreen(),
      ),
    );
  }
}
