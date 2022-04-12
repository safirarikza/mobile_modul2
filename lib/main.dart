import 'dart:html';

import 'package:flutter/material.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: PageOne());
  }
}

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  String _string = 'hay';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_string),
            ElevatedButton(
              onPressed: () async {
                final result = await Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => PageTwo()),
                );

                if(result != null)
                setState(() { _string = result!;});
              },
              child: Text("to PageTwo"),
            ),
          ],
        ),
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, "Hallo");
              },
              child: Text("Kembali dan Ubah text"),
              ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Kembali"),
              ),
          ],
        ),
      ),
    );
  }
}

class CostumeTextField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const CostumeTextField({Key? key, required this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext Context) {
    return SizedBox(
      width: 200,
      child: TextFormField( 
      onChanged: (value) => onChanged(value))
    
    );
  }
}