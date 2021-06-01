import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class Country{
  final String name ;
  final String code ;

  Country(this.name, this.code);
}

class _Page2State extends State<Page2> {

  Future<List<Country>> getCountries() async {
    String apiUrl = "https://raw.githubusercontent.com/fabidick22/countryJSON/master/contryCode.json";
    http.Response response = await http.get(apiUrl);
    var data = json.decode(response.body);
    List <Country> countriesList = [];
    for(var c in data ){
      Country country = new Country(c['name'], c['code']);
      countriesList.add(country);
    }
    return countriesList ;
  }

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
                  future: getCountries(),
                  builder: (BuildContext context , AsyncSnapshot snapshot){
                    if(snapshot.data == null){
                      return Center(
                        child: Container(
                          child: Text("Loading..."),
                        ),
                      );
                    }
                    else{
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 18),
                        child: ListView.builder(
                            itemCount: snapshot.data.length,
                            itemBuilder:(BuildContext context , int index){
                              return GestureDetector(
                                onTap: (){
                                  setState(() {
                                    if(index == selectedIndex){
                                      widgetOfSelectedItem = Icon(Icons.flag);
                                    }else{
                                      widgetOfSelectedItem = Text("");
                                    }
                                  });
                                },
                                child: Column(
                                  children: <Widget>[
                                    ListTile(
                                      title: Text('${snapshot.data[index].name}'),
                                      leading: widgetOfSelectedItem,
                                      onTap: (){
                                        setState(() {
                                          selectedIndex = index;
                                        });
                                      },
                                    ),
                                    Divider(color: Colors.black,height: 2,)
                                  ],
                                ),
                              );
                            }
                        ),
                      );
                    }
              }),

            ),
          )
        ],
      ),
    );
  }
}










