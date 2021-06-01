import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class TestPage extends StatefulWidget {
  @override
  _TestPageState createState() => _TestPageState();
}


class _TestPageState extends State<TestPage> {
  
  Icon selectedIcon ;
  int selectedIndex;
  Widget widgetOfSelectedItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE9E3E3),
      body: Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Color(0xFF6E78F7),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25))
            ),
            height: 160,
            width: MediaQuery
                .of(context)
                .size
                .width,
            child: Row(
              children: <Widget>[
                SizedBox(width: 25,),
                Icon(Icons.close, color: Colors.white, size: 25,),
                SizedBox(width: 10,),
                Text("Select your city", style: TextStyle(
                    color: Colors.white,
                    fontSize: 18
                ),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 130, left: 17, right: 17),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25)
                ),
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(Icons.search),
                hintText: "Search here",
              ),
            ),
          ),
          Positioned(
            height: 470,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: GestureDetector(
                onTap: (){},
                child: Row(
                  children: <Widget>[
                    Icon(Icons.my_location , color: Color(0xFF6E78F7),),
                    SizedBox(width: 8,),
                    Text("Use current location", style: TextStyle(
                        fontSize: 14
                    ),)
                  ],),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 300),
            child: Container(
              height: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(25),
                    topLeft: Radius.circular(25)),
              ),
              child: FutureBuilder(
                future: DefaultAssetBundle.of(context).loadString("assets/json/contryCode.json"),
                builder: (context, snapshot){
                var showData=json.decode(snapshot.data.toString());
                return ListView.builder(
                  itemBuilder: (BuildContext context, int index){
                    return ListTile(
                      title: Text(showData[index]['name']),
                      subtitle: Text(showData[index]['code']),
                    );
                  },
                  itemCount: showData.length,
                );
              },

              ),

            ),
          )
        ],
      ),
    );
  }
}









