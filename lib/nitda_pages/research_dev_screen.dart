import 'package:flutter/material.dart';

class ResearchDevPage extends StatelessWidget {
  ResearchDevPage({Key? key}):super(key: key);

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
       title: Text("Research and Development, Education and Emerging Technologies", 
       style: TextStyle(color: Colors.white),
       ),
       backgroundColor: Colors.green.shade900,
      ),
    );
  }
}