import 'package:flutter/material.dart';

void main() => runApp(SnackBarDemo());

class SnackBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Snackbar Example',
        home: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://images.pexels.com/photos/3026806/pexels-photo-3026806.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                    fit: BoxFit.cover)),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                backgroundColor: Colors.pink[900],
                elevation: 0,
                title: const Text(
                  'YUMMI SNACKS',
                ),
              ),
              body: SnackBarPage(),
            )));
  }
}

class SnackBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.redAccent[100],
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
        onPressed: () {
          final SnackBar snackBar = SnackBar(
            content: Text('There you go! crunch crunch!'),
            backgroundColor: Colors.blueGrey[400],
            action: SnackBarAction(
              textColor: Colors.white,
              label: 'Undo',
              onPressed: () {},
            ),
          );

          // Find the Scaffold in the widget tree and use
          // it to show a SnackBar.
          Scaffold.of(context).showSnackBar(snackBar);
        },
        child: Text('EAT SNACKBAR'),
      ),
    );
  }
}
