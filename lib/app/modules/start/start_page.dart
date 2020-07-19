import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StartPage extends StatefulWidget {
  
  // final String title;
  // const StartPage({Key key, this.title = "Start"}) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(50),
            child: Center(
              child: Image.asset(
                'assets/images/workupper_logo.png'
              )
            )
          ),
          SizedBox(height: 20),
          Expanded(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  child: FlatButton(
                    child: Text(
                      'CRIAR CONTA', 
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                        color: Theme.of(context).backgroundColor
                      ),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                    ),
                    color: Colors.white,
                    onPressed: (){
                      Navigator.pushNamed(context, '/signup');
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(30, 30, 30, 40),
                  child: FlatButton(
                    child: Text(
                      'ENTRAR', 
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                        color: Colors.white
                      ),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                    ),
                    color: Theme.of(context).primaryColor,
                    onPressed: (){
                      // Navigator.pushNamed(context, '/login');
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
