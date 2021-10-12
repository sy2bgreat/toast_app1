import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Toast message Case 1"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            toastAction();
          },
          child: const Text(
            "Toast Button",
          ),
        ),
      ),
    );
  }

  //toast Action function
  void toastAction() {
    Fluttertoast.showToast(
      msg: "Toast btn is clicked",
      backgroundColor: Colors.black,
      textColor: Colors.white,
      fontSize: 20.0,
      toastLength: Toast.LENGTH_SHORT,
    );
  }

  // class

}
