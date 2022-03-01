import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<void> showInformationDialog(BuildContext context) async {
    return await showDialog(
        context: context,
        builder: (context) {
          final TextEditingController _textEditingController =
              TextEditingController();
          return AlertDialog(
            content: Form(
                child: Column(
              children: [
                TextFormField(
                  controller: _textEditingController,
                  validator: (value) {
                    return value!.isNotEmpty ? null : 'Invalid Field';
                    
                  },
                  
                  decoration: InputDecoration(hintText: 'Enter some text'),
                ),
                // Row(
                //   children: [
                //     Text('Choice box'),
                //     Checkbox(value: value, onChanged: onChanged)
                //   ],
                // ),
              ],
            )),
            actions: [
              TextButton(
                child: Text('Press'),
                onPressed: () {
                  Navigator.of(context).pop();
                  // print();
                },
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AlertDialog')),
      body: Container(
          child: Center(
        child: TextButton(
          onPressed: () async {
            await showInformationDialog(context);
          },
          child: Text('Alert Widget'),
        ),
      )),
    );
  }
}
