import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page6 extends StatefulWidget {
  @override
  _Page6State createState() => _Page6State();
}

class _Page6State extends State<Page6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  "assets/images/6-background.png",
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Text(
                    "Med +",
                    style: TextStyle(fontSize: 45, color: Colors.white),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(29),
                      bottomLeft: Radius.circular(29)),
                  color: Color(0xFF6E78F7).withOpacity(0.8),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 480, left: 50, right: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 20, top: 18, bottom: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        CircleAvatar(
                          child: Image.asset("assets/icons/phone.png" ,),
                          backgroundColor: Colors.transparent,
                          radius: 14,
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Text(
                          "Mobile number",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  onPressed: () {},
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide:
                          BorderSide(color: Color(0xFFE5D6FF), width: 0.5)),
                  color: Colors.white,
                ),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 20, top: 18, bottom: 18),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: <Widget>[
                         CircleAvatar(
                           child: Image.asset("assets/icons/facebook.png"),
                           backgroundColor: Colors.transparent,
                           radius: 14,
                         ),
                         SizedBox(
                           width: 60,
                         ),
                         Text(
                           "Facebook",
                           style: TextStyle(color: Colors.blue, fontSize: 20),
                         ),
                       ],
                     ),
                  ),
                  onPressed: () {},
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide:
                          BorderSide(color: Color(0xFFE5D6FF), width: 0.5)),
                  color: Colors.white,
                ),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 20, top: 18, bottom: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        CircleAvatar(
                          child: Image.asset("assets/icons/gmail.png" ,),
                          backgroundColor: Colors.transparent,
                          radius: 14,
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        Text(
                          "Google",
                          style: TextStyle(color: Colors.red, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  onPressed: () {},
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide:
                          BorderSide(color: Color(0xFFE5D6FF), width: 0.5)),
                  color: Colors.white,
                )
              ],
            ),
          ),
          Positioned(
            left: 100,
            bottom: 60,
            child: Text(
              "By continuing, you agree to Terms & Conditions",
              style: TextStyle(fontSize: 12, color: Colors.black),
            ),
          ),
          Positioned(
            bottom: -150,
              right: -100,
              child: Image.asset("assets/images/6-background1.png")
          ),
        ],
      ),
    );
  }
}
