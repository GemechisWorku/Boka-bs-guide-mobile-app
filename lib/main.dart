import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Bs_detail.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Boka E-BSG',
    home: HomePage(),
  ));
}
class HomePage extends StatefulWidget{
  String data;
  @override
  State<StatefulWidget> createState() => Home(data);
  
}

class Home extends State<HomePage> {
  String path = 'files/yaada-garaa.txt';
  String data;
  Home(this.data);
   fetchFileData()async {
    String responseString;
    responseString = await rootBundle.loadString(path);

    setState(() {
     data = responseString; 
    });
  }
  @override
  void initState() {
    fetchFileData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Boka E-BSG'),
        backgroundColor: Colors.deepOrangeAccent,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ]
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          data,
          style: TextStyle(fontSize: 15.0),
          ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: <Color>[
                  Colors.deepOrange,
                  Colors.orangeAccent
                ])
              ),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Material(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      elevation: 10.0,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Image.asset('images/boka-logo.jpg', width:90, height:90),
                      )
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        'Boka E-BSG',
                        style:TextStyle(color: Colors.white, fontSize: 20.0)
                        ),
                    ),
                  ],
                ),
              ),
            ),
           MenuItem('Boqonnaa 1', 'Jaalala',jaalalaDetail('files/yaada-garaa.txt')),
           MenuItem('Boqonnaa 2', 'Haasawaa Gaarii',()=>{}),
           MenuItem('Boqonnaa 3', 'Cimanii Hojjechuu',()=>{}),
           MenuItem('Boqonnaa 4', 'Hafuura Qulqulluu',()=>{}),
           MenuItem('Boqonnaa 5', 'Fayyina',()=>{}),
           MenuItem('Boqonnaa 6', 'Amanamummaan Hojjechuu',()=>{}),
           MenuItem('Boqonnaa 7', 'Seera',()=>{}),
           MenuItem('Boqonnaa 8', 'Ayyaana Waaqayyoo',()=>{}),
           MenuItem('Boqonnaa 9', 'Tokkummaa',()=>{}),
           MenuItem('Boqonnaa 10', 'Ilaalcha',()=>{}),
          ],
        ),
      ),
    );
  }
}
jaalalaDetail(String path){
  return Home(path);
}

class MenuItem extends StatelessWidget{
  final String title;
  final String subtitle;
  final Function onTap;
  MenuItem(this.title,this.subtitle, this.onTap);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0,0,8.0,0),
      child: Container(
        decoration: BoxDecoration(
          border:Border(
            bottom: BorderSide(color: Colors.grey.shade300),
            top:BorderSide(color: Colors.grey.shade300) 
          )
        ),
        height: 60.0,
        child: ListTile(
          title: Text(title),
          subtitle: Text(subtitle),
          onTap: onTap
        )
      ),
    );
  } 
}