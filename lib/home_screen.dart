import 'package:flutter/material.dart';
import 'package:nitda_project/firebase_files/login_screen.dart';
import 'package:nitda_project/image_screen.dart';
import 'firebase_files/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:url_launcher/url_launcher.dart';


class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final  User? user = Auth().currentUser;
  final Uri url = Uri.parse('https://nitda.gov.ng/');

  Future<void> _launchURL(Uri url) async{
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)){
      throw Exception('could not launch $url');
    }
  }

   Widget _UserID(){
    return Text(user?.email?? 'User Email');
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: 40,
          width: 400,
          child: Image.asset('assets/images/NITDA_00x500.jpeg'),
        ),
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
              decoration: const BoxDecoration(
                  color: Colors.white), // basically the appbar of the drawer
              child: _UserID()
            ),
            Column(
              children: [
                ListTile(
                    leading: const Icon(
                      Icons.task,
                      color: Colors.white,
                    ),
                    //a list of tiles
                    title: const Text("Allocation of tasks to Assigned Workstreams",
                        style: TextStyle(color: Colors.white)),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => ImageScreen(
                                  imagePaths: const [
                                    'assets/images/allocation_1.jpg',
                                    'assets/images/allocation_2.jpg',
                                  ],
                                  appBarTitle:
                                      'Allocation of tasks to Assigned Workstreams',
                                  appBarColor: Colors.green.shade900,
                                  sliderBackgroundColor: Colors.white,
                                ))))),
                Container(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: const Divider(
                    color: Colors.white,
                    thickness: 0.5,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                ListTile(
                  leading: const Icon(
                    Icons.domain,
                    color: Colors.white,
                  ),
                  title: const Text(
                    "Infrastructure and Internal Capabilities",
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ImageScreen(
                          imagePaths: const [
                            'assets/images/infrastructure.jpg',
                            
                          ],
                          appBarTitle:
                              'Infrastructure and Internal Capabilities',
                          appBarColor: Colors.green.shade900,
                          sliderBackgroundColor: Colors.white,
                        ),
                      )),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: const Divider(
                    color: Colors.white,
                    thickness: 0.5,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                ListTile(
                  leading: const Icon(
                    Icons.tab,
                    color: Colors.white,
                  ),
                  title: const Text("Human Capital, Content and Capacity",
                      style: TextStyle(color: Colors.white)),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ImageScreen(
                                imagePaths: const ['assets/images/human_capital.jpg',
                                             'assets/images/human_capital_2.jpg'
                                ],
                                appBarTitle:
                                    'Human Capital, Content and Capacity',
                                appBarColor: Colors.green.shade900,
                                sliderBackgroundColor: Colors.white,
                              ))),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: const Divider(
                    color: Colors.white,
                    thickness: 0.5,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                ListTile(
                  leading: const Icon(
                    Icons.biotech,
                    color: Colors.white,
                  ),
                  title: const Text(
                    "Research and Development, Education and Emerging Technologies",
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ImageScreen(
                                imagePaths: const ['assets/images/Research.jpg', 'assets/images/Research_2.jpg'],
                                appBarTitle: 'Research and Development',
                                appBarColor: Colors.green.shade900,
                                sliderBackgroundColor: Colors.white,
                              ))),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: const Divider(
                    color: Colors.white,
                    thickness: 0.5,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                ListTile(
                  leading: const Icon(
                    Icons.group,
                    color: Colors.white,
                  ),
                  title: const Text(
                    "Funding and Partnerships",
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ImageScreen(
                                imagePaths: const ['assets/images/funding.jpg', 'assets/images/funding_2.jpg'],
                                appBarTitle: 'Funding and Partnerships',
                                appBarColor: Colors.green.shade900,
                                sliderBackgroundColor: Colors.white,
                              ))),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: const Divider(
                    color: Colors.white,
                    thickness: 0.5,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                ListTile(
                  leading: const Icon(
                    Icons.auto_graph_outlined,
                    color: Colors.white,
                  ),
                  title: const Text(
                    "Enterprise Development and Growth",
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ImageScreen(
                                imagePaths: const ['assets/images/Enterprise.jpg', 'assets/images/Enterprise_2.jpg'],
                                appBarTitle:
                                    'Enterprise Development and Growth',
                                appBarColor: Colors.green.shade900,
                                sliderBackgroundColor: Colors.white,
                              ))),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: const Divider(
                    color: Colors.white,
                    thickness: 0.5,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                ListTile(
                  leading: const Icon(
                    Icons.analytics,
                    color: Colors.white,
                  ),
                  title: const Text(
                    "Monitoring, Data and Analysis",
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ImageScreen(
                                imagePaths: const ['assets/images/monitoring.jpg'],
                                appBarTitle: 'Monitoring, Data and Analysis',
                                appBarColor: Colors.green.shade900,
                                sliderBackgroundColor: Colors.white,
                              ))),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: const Divider(
                    color: Colors.white,
                    thickness: 0.5,
                  ),
                ),
              ],
            ),
            const SizedBox(),
            ListTile(
              leading: const Icon(
                Icons.phone,
                color: Colors.white,
              ),
              title: const Text(
                "Contact Us",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                _launchURL(url);
              },
            ),
            Container(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: const Divider(
                color: Colors.white,
                thickness: 0.5,
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.exit_to_app,
                color: Colors.white,
              ),
              title: const Text(
                "Log Out",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                 FirebaseAuth.instance.signOut().then((value) {
      Navigator.push(context, MaterialPageRoute(builder: (context )=> const LoginPage()));
     });
              },
            ),
            Container(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: const Divider(
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
