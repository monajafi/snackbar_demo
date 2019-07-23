import 'package:flutter/material.dart';

void main() => runApp(SnackBarApp());

class SnackBarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Snackbar Demo",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Snackbar Demo"),
        ),
        body: SnackbarPage(),
      ),
    );
  }
}

class SnackbarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text("Show snack"),
        onPressed: () {
          final snackBar = SnackBar(
            content: Text("Yay this is snackbar"),
            action: SnackBarAction(
              label: "Undo",
              onPressed: (){
                print("snackbar action");
              },
            ),
          );
          Scaffold.of(context).showSnackBar(snackBar);
        },
      ),
    );
  }
}
