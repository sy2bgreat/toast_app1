// ignore: file_names
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyToast extends StatelessWidget {
  const MyToast({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: () {
            toastAction();
          },
          child: const Text(
            "my toast",
          ),
          style: ElevatedButton.styleFrom(
              primary: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ))),
    );
  }

  void toastAction() {
    Fluttertoast.showToast(
      msg: "Toast btn is clicked",
      backgroundColor: Colors.green,
      textColor: Colors.white,
      fontSize: 20.0,
      toastLength: Toast.LENGTH_SHORT,
    );
  }
}
