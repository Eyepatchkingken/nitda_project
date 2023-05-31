import 'package:flutter/material.dart';

class FundingPage extends StatelessWidget {
    FundingPage({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back),
        onPressed: (){
          Navigator.pop(context);
        },
        ),
        centerTitle: true,
       title: Text("Funding and Partnerships", 
       style: TextStyle(color: Colors.white),
       ),
       backgroundColor: Colors.green.shade900,
      ),
    );
  }
}