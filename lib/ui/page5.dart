import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Page5 extends StatefulWidget {
  @override
  _Page5State createState() => _Page5State();
}

class _Page5State extends State<Page5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset("assets/images/5-background.png" , fit: BoxFit.cover,),
          Padding(
            padding: const EdgeInsets.only(top: 155),
            child: Theme(
              data: ThemeData(
                fontFamily: GoogleFonts.poppins().fontFamily,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Book Diagonostic" , style: TextStyle(
                      fontSize: 20
                  )),
                  SizedBox(height: 10,),
                  Text("Search and book diagnostic" , style: TextStyle(
                      fontSize: 14
                  ),),
                  Text("test" , style: TextStyle(
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
