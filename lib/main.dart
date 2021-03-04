import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:spotifyCloneUi/screens/email_signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      darkTheme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white)),
      ),
      themeMode: ThemeMode.dark,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Container(
          height: deviceHeight,
          width: deviceWidth,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.black, Colors.black],
            ),
          ),
          child: Stack(
            children: [
              Container(
                height: deviceHeight * 0.4,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/bg.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withOpacity(0.6),
                        Colors.black.withOpacity(0.9)
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 150.0,
                left: 50,
                right: 50,
                child: SvgPicture.asset(
                  'assets/icon.svg',
                  height: 50.0,
                  width: 50.0,
                  color: Colors.white,
                ),
              ),
              Column(
                children: [
                  Spacer(flex: 12),
                  Container(
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        'Millions of Books. \nFree On Medebir.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 38.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: deviceHeight * 0.15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => EmailSignUpScreen()),
                        );
                      },
                      height: 50.0,
                      minWidth: double.infinity,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      color: Color(0xFF1db954),
                      child: Text(
                        'Sign up free',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: MaterialButton(
                      onPressed: () {},
                      height: 50.0,
                      minWidth: double.infinity,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                        side: BorderSide(color: Colors.grey, width: 1.0),
                      ),
                      child: Row(
                        children: [
                          FaIcon(FontAwesomeIcons.phone, color: Colors.green),
                          SizedBox(width: deviceWidth * 0.15),
                          Text(
                            'Continue with Phone',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: MaterialButton(
                      onPressed: () {},
                      height: 50.0,
                      minWidth: double.infinity,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                        side: BorderSide(color: Colors.grey, width: 1.0),
                      ),
                      child: Row(
                        children: [
                          FaIcon(FontAwesomeIcons.google, color: Colors.red),
                          SizedBox(width: deviceWidth * 0.15),
                          Text(
                            'Continue with Google',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  FlatButton(
                    onPressed: () {},
                    child: Text('Log in',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w700)),
                  ),
                  Spacer(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//Color(0xff29a19c)
//Color(0xffa3f7bf)
