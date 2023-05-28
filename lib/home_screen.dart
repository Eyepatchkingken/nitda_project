import 'package:flutter/material.dart';
import 'package:nitda_project/pillars_screen.dart';
import 'package:nitda_project/executive_summary_screen.dart';
import 'package:nitda_project/strategic_context_screen.dart';
import 'package:nitda_project/strategic_methodology_screen.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('NITDA SRAP'),
        backgroundColor: Colors.green.shade900,
        elevation: 10,
      ),
      body: Center(
        child: Image.asset('assets/images/NITDA_00x500.jpeg'),
      ),
      drawer: Drawer(
        backgroundColor: Colors.green.shade900,
        child: ListView(
          // make the drawer a list view
          padding: EdgeInsets.zero,
          children: <Widget>[
            // the drawer is a collection of widgets
            DrawerHeader(
              // basically the appbar of the drawer
              decoration: BoxDecoration(
                  color: Colors.white), // basically the appbar of the drawer
              child: CircleAvatar(
                child: Image.asset('assets/images/default_profile_pic.jpg'),
              ),
            ),
            Column(
              children: [
                ListTile(
                    leading: Icon(
                      Icons.summarize,
                      color: Colors.white,
                    ),
                    //a list of tiles
                    title: Text("Allocation of tasks to Assigned Workspace",
                        style: TextStyle(color: Colors.white)),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => ExecutiveSummaryPage())))),
                Container(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Divider(
                    color: Colors.white,
                    thickness: 0.5,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.pageview_rounded,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Infrastructure and Internal Capabilities",
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => StrategicContextPage(),
                      )),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Divider(
                    color: Colors.white,
                    thickness: 0.5,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.next_plan_sharp,
                    color: Colors.white,
                  ),
                  title: Text("Human Capital, Content and Capacity",
                      style: TextStyle(color: Colors.white)),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => StrategyMethodPage())),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Divider(
                    color: Colors.white,
                    thickness: 0.5,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.polyline_sharp,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Research and Development, Education and Emerging Technologies",
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PillarsPage())),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Divider(
                    color: Colors.white,
                    thickness: 0.5,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.polyline_sharp,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Funding and Partnerships",
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PillarsPage())),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Divider(
                    color: Colors.white,
                    thickness: 0.5,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.polyline_sharp,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Enterprise Development and Growth",
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PillarsPage())),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Divider(
                    color: Colors.white,
                    thickness: 0.5,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.polyline_sharp,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Monitoring, Data and Analysis",
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PillarsPage())),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Divider(
                    color: Colors.white,
                    thickness: 0.5,
                  ),
                ),
              ],
            ),
            SizedBox(),
            ListTile(
              leading: Icon(
                Icons.phone,
                color: Colors.white,
              ),
              title: Text(
                "Contact Us",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            ),
            Container(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Divider(
                color: Colors.white,
                thickness: 0.5,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.exit_to_app,
                color: Colors.white,
              ),
              title: Text(
                "Exit",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            ),
            Container(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Divider(
                color: Colors.white,
                thickness: 0.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
