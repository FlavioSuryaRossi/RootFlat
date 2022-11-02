import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        home: Scaffold(
            appBar: AppBar(
                centerTitle: true,
                title: Text("Root Flat",
                    style: TextStyle(
                      fontFamily: 'ComicSans',
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ))),
            body: SingleChildScrollView(
              child: Column(children: [
                SizedBox(height: 25),
                Text(
                    "Questo è l'appartamento radice, "
                    'tradotto in italiano da "Root flat"',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Helvetica',
                        fontWeight: FontWeight.w400)),
                SizedBox(height: 15),
                Center(
                    child: Container(
                        alignment: Alignment.center,
                        height: 400,
                        child: Image.network(
                            'https://blog.savills.com/_images/york-mansions(1).jpg'))),
                SizedBox(height: 10),
                SnackBarPage()
              ]),
            )));
  }
}

class SnackBarPage extends StatelessWidget {
  const SnackBarPage({Key? key}) : super(key: key);

  void showSnackBar(BuildContext context) {
    final snackBar = SnackBar(
        content: Text(
            'Non ci sono appartamenti attualmente disponibili, riprova più tardi!'));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.blue,
            ),
            onPressed: () {
              showSnackBar(context);
            },
            child: Text('Prenota un appartamento',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 15))));
  }
}
