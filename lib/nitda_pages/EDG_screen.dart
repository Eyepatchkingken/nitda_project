import 'package:flutter/material.dart';

class EDGPage extends StatelessWidget {
    EDGPage({Key? key}):super(key: key);

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
       title: Text("Enterprise Development and Growth", 
       style: TextStyle(color: Colors.white),
       ),
       backgroundColor: Colors.green.shade900,
      ),
    );
  }
}