import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Page3 extends StatefulWidget {
  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset("assets/images/3-background.png" , fit: BoxFit.cover,),
          Padding(
            padding: const EdgeInsets.only(top: 155),
            child: Theme(
              data: ThemeData(
                fontFamily: GoogleFonts.poppins().fontFamily,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Search Doctors" , style: TextStyle(
                      fontSize: 20
                  )),
                  SizedBox(height: 10,),
                  Text("Get list of best doctors" , style: TextStyle(
                      fontSize: 14
                  ),),
                  Text("nearby you" , style: TextStyle(
                      fontSize: 14
                  ),)
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 80,
            left: (MediaQuery.of(context).size.width-180)/2,
            height: 60,
            width: 180,
            child: RaisedButton(
              color: Colors.white,
              shape: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFFE5D6FF),
                  width: 2
                ),
                borderRadius: BorderRadius.circular(25),
              ),
              onPressed: (){},
              child: Center(
                child: Text("Next" , style: TextStyle(
                    color: Color(0xFF7A3FE1),
                  fontSize: 20
                ),),
              ),
            ),
          )
        ],
      ),
    );
  }
}
