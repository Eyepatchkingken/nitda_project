import 'package:flutter/material.dart';
import 'package:nitda_project/pillars_screen.dart';
import 'package:nitda_project/executive_summary_screen.dart';
import 'package:nitda_project/strategic_context_screen.dart';
import 'package:nitda_project/strategic_methodology_screen.dart';

class HomePage extends StatelessWidget{
  HomePage({Key? key}):super (key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
       appBar: AppBar(
        title: Text('NITDA SRAP'), 
        backgroundColor: Colors.green,
        elevation: 10,
      ),
        body: Center(
        child: Image.asset('assets/images/NITDA_00x500.jpeg'),
        ),
        drawer: Drawer(
            backgroundColor: Colors.green,
            child: ListView( // make the drawer a list view
              padding: EdgeInsets.zero,
              children: <Widget>[// the drawer is a collection of widgets
                DrawerHeader( // basically the appbar of the drawer
                  decoration: BoxDecoration(
                    color: Colors.white
                  ), // basically the appbar of the drawer
                  child: CircleAvatar(
                    child: Image.asset('assets/images/default_profile_pic.jpg'),
                  ),
                   ),
                   ListTile( //a list of tiles
                    title: Text("Executive Summary"),
                    onTap: () =>  Navigator.push(context, MaterialPageRoute(builder: ((context) => ExecutiveSummaryPage())))
                   ),
                   ListTile( 
                    title: Text("Strategic Context"),
                    onTap: () =>  Navigator.push(context, MaterialPageRoute(builder: (context) => StrategicContextPage(),)),
                   ),
                   ListTile( 
                    title: Text("Strategy Methodology"),
                    onTap: () =>  Navigator.push(context, MaterialPageRoute(builder: (context) => StrategyMethodPage())),
                   ),
                   ListTile( 
                    title: Text("Strategic Pillar Mapping"),
                    onTap: () =>  Navigator.push(context, MaterialPageRoute(builder: (context) => PillarsPage ())),
                   ),
                    ListTile( 
                    title: Text(""),
                    onTap: () {}
                   ),
                    ListTile( 
                    title: Text("Contact Us"),
                    onTap: () {},
                   ),
                    ListTile( 
                    title: Text("Exit"),
                    onTap: () {},
                   ),
              ],
            ),
        ),
    );
  }
}