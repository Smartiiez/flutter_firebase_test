import 'dart:convert';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
    apiKey: "",
    appId: "",
    messagingSenderId:
        "",
    projectId:
        "",
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Firebase test'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late DatabaseReference _usersDatabase;
  String _firstName = "";
  @override
  void initState() {
    final FirebaseDatabase usersDatabase = FirebaseDatabase.instance;
    _usersDatabase = usersDatabase.ref("user");
    super.initState();
  }

  void _incrementCounter() async {
    try {
      DataSnapshot snapshot =
          await _usersDatabase.child("-MqIm1T1ic-8inERbOC5").get();
      if (snapshot.value != null) {
        String strValue = jsonEncode(snapshot.value);
        Map<String, dynamic> value = jsonDecode(strValue);
        setState(() {
          _firstName = value["first_name"];
        });
      }
    } catch (e) {
      if (kDebugMode) {
        print("error $e");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Fetch firstname of user from Firebase RTDB:',
            ),
            Text(
              _firstName,
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
