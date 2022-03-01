import 'package:flutter/material.dart';

class addItem extends StatefulWidget {
  @override 
  State<addItem> createState() =>_addItem(); 
}
class _addItem extends State<addItem>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Post')
      ),
      body: Container(),
    );
  }

}
