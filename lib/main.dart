import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFFC41A3B),
        primaryColorLight: Color(0xFFFBE0E6),
        accentColor: Color(0xFF1B1F32),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = 'Popup Menu';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        actions: <Widget>[
          PopupOptionMenu(),
        ],
      ),
      body: Center(),
    );
  }
}

enum MenuOption { Send, Draft, Discard }

class PopupOptionMenu extends StatelessWidget {
  const PopupOptionMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<MenuOption>(
      itemBuilder: (BuildContext context) {
        return <PopupMenuEntry<MenuOption>>[
          PopupMenuItem(
            child: Text('Send'),
            // child: Icon(Icons.send, color: Colors.black, size: 28.0),
            value: MenuOption.Send,
          ),
          PopupMenuItem(
            child: Text('Draft'),
            // child: Icon(Icons.drafts, color: Colors.black, size: 28.0),
            value: MenuOption.Draft,
          ),
          PopupMenuItem(
            child: Text('Discard'),
            // child: Icon(Icons.cancel, color: Colors.black, size: 28.0),
            value: MenuOption.Discard,
          ),
        ];
      },
    );
  }
}
