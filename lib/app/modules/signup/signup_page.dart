import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'signup_controller.dart';

class SignupPage extends StatefulWidget {
  final String title;
  const SignupPage({Key key, this.title = "Signup"}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends ModularState<SignupPage, SignupController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0,
      ),
      body: AnnotatedRegion(
        value: SystemUiOverlayStyle.light,
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(25, 15, 25, 0),
              child: Column(
                children: [
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.start,
                  //   children: [
                  //     BackButton(
                  //       color: Colors.white,
                  //       onPressed: () {
                  //         Navigator.pop(context);
                  //       }
                  //     )
                  //   ],
                  // ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Text(
                      'Vamos começar...',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'OpenSans',
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 100,),
                  Text(
                    'O que você quer fazer?',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'OpenSans',
                      fontSize: 20,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  Container(
                    child: Column(
                    children: <Widget>[
                      SizedBox(height: 90),
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 38, 128, 235),
                          borderRadius: BorderRadius.circular(5)
                        ),
                        height: 55,
                        child: Text(
                          'QUERO TRABALHAR',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                            color: Colors.white
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 40),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)
                        ),
                        height: 55,
                        child: Text(
                          'QUERO CONTRATAR',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                            color: Theme.of(context).backgroundColor
                          ),
                        ),
                      ),
                    ],
                  ), 
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
