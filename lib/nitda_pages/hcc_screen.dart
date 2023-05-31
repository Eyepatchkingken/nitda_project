import 'package:flutter/material.dart';

class HccPage extends StatelessWidget {
  const HccPage({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back),
        onPressed: (){
          Navigator.pop(context);
        },
        ),
        centerTitle: true,
       title: Text("Human Capital, Content and Capacity", 
       style: TextStyle(color: Colors.white),
       ),
       backgroundColor: Colors.green.shade900,
      ),
    );
  }
}