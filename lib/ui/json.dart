/*
to use the local json :
                      1) put the file.json in the assets file in project
                      2) declare this file.json in pubspec.yaml
                      3) use FutureBuilder(
                               future: DefaultAssetBundle.of(context).loadString("file_path"),
                               builder: (context, snapshot){
                                   var showData=json.decode(snapshot.data.toString());
                                   return ListView.builder();
                               }
                           );

to use the global json :
                      1) create class to receive the data

                            class Country{
                              final String name ;
                              final String code ;
                              Country(this.name, this.code);
                            }
                      2) create function to give use the data in List

                            Future<List<Country>> getCountries() async {
                              String apiUrl = "link of json";
                              http.Response response = await http.get(apiUrl);
                              var data = json.decode(response.body);
                              List <Country> countriesList = [];
                              for(var c in data ){
                                Country country = new Country(c['name'], c['code']);
                                countriesList.add(country);
                              }
                              return countriesList ;
                            }
                       3) use FutureBuilder(
                               future: getCountries(),
                               builder: (context, snapshot){
                                   if(snapshot.data == null){
                                   return Center(child: Container(child: Text("Loading..."),),);}
                                      else{return ListView.builder();}
                               }
                           );

 */




// local json
import 'dart:convert';
import 'package:flutter/material.dart';

class JsonLocal extends StatefulWidget {
  @override
  _JsonLocalState createState() => _JsonLocalState();
}
class _JsonLocalState extends State<JsonLocal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Load JSON File From Local"),),
      body: Center(
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
    );
  }
}


