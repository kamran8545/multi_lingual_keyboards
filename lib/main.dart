import 'package:flutter/material.dart';
import 'package:multi_lingual_keyboard/keyboards_layouts/multi_lingual_keyboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatelessWidget {
  MyWidget({Key? key}) : super(key: key);
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 200,),
          TextField(
            controller: textEditingController,
            readOnly: true,
            showCursor: true,
          ),
          MultiLingualKeyboard(
            textEditingController: textEditingController,
            // keyboardBackgroundColor: Colors.lightGreen,
          )
          // TextField(),
        ],
      ),
    );
  }
}




