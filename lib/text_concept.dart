import 'package:flutter/material.dart';

class TextConcetScreen extends StatelessWidget {
  const TextConcetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text('Text Concept'),
        centerTitle: true,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Hello,World',style: TextStyle(color: Colors.black,fontSize: 25),),
          SizedBox(height: 20,),
          RichText(text: TextSpan(
            text: 'Hello',
            style: TextStyle(color: Colors.red,fontSize: 25),children: [
              TextSpan(text: 'World',style: TextStyle(color: Colors.blue,fontSize: 25)),
          ]
          ),),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
              labelText: 'Enter Name',
            ),),
          ),SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Enter the Name',
              ),
            ),
          ),SizedBox(height: 20,),
          SelectableText('Long press to select and copy',style: TextStyle(fontSize: 25,color: Colors.black),),
        ],
      ),
    );
  }
}
