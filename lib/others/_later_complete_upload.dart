//import 'dart:html';

import 'package:flutter/material.dart';

class sign_up extends StatefulWidget {
  sign_up({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<sign_up> {
  int _counter = 0;
  int _selectedIndex = 0;

  //Color yellow = Color(0xFFC50C);
  Color yellow_ = Color.fromRGBO(255, 197, 12, 1);
  //Color red = Color(0xF15922);
  Color red_color = Color.fromRGBO(241, 89, 34, 1);
  //Color bright = Color(0xC4C4C4);
  Color bright_ = Color.fromRGBO(196, 196, 196, 1);
  //Color dark = Color(0x776666);
  Color dark_ = Color.fromRGBO(119, 102, 102, 1);
  //Color.fromRGBO(255, 255, 255, 1)
  Color pure_ = Color.fromRGBO(255, 255, 255, 1);
  //Colors background_colors = Color.fromRGBO(254, 254, 254, 1);

  void return_back(){
    Navigator.of(context).pop();

    /* Navigator.of(context).push(MaterialPageRoute(
    builder: (BuildContext context) => sign_up())); */
  }

  TextEditingController emailer = TextEditingController();
  TextEditingController password_1 = TextEditingController();
  TextEditingController password_2 = TextEditingController();
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bright_,
      body: Container(
        decoration: BoxDecoration(
          color: pure_,
          borderRadius: BorderRadius.circular(15)
        ),
        width: double.infinity,
        child: Center(
          child: ListView(
            children: <Widget>[
              Column(
                children:  <Widget> [
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 2, color: Colors.black,)
                    ),
                    child: IconButton(iconSize: 70, icon: Icon(Icons.camera_enhance), onPressed: null),
                  ),
                  //Text("Please, Fill the Form"),

                  Padding(
                    padding: EdgeInsets.fromLTRB(17, 9, 17, 9),
                    child: TextField(
                      maxLines: 1,
                      decoration: InputDecoration(
                        hintText: "FullName",
                      )
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(17, 9, 17, 9),
                    child: TextField(
                      maxLines: 1,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: "Email Address",
                      )
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(17, 9, 17, 9),
                    child: TextField(
                      maxLines: 1,
                      decoration: InputDecoration(
                        hintText: "Phone No",
                      )
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(17, 9, 17, 9),
                    child: TextField(
                      maxLines: 1,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        hintText: "Password",
                        suffixIcon: Icon(Icons.remove_red_eye)
                      )
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(17, 9, 17, 9),
                    child: TextField(
                      maxLines: 1,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        hintText: "Repeat Password",
                        suffixIcon: Icon(Icons.remove_red_eye)
                      )
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.fromLTRB(9.0, 31, 9.0, 21),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all( width: 1)
                      ),
                      child: FlatButton(
                        onPressed: return_back, 
                        child: Text(
                          "SIGN UP",
                          style: TextStyle( fontWeight: FontWeight.w800, ),
                        )
                      ),
                    ),
                  )
                ]
              ),
            ],
          ),
        ),
      )
    );
  }
}
