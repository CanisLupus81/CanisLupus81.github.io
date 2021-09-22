import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CG Website',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  Widget mobileBuilder(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Stack(children: [
      Container(width: width, height: height, color: Color(0xff324749)),
      Container(
          width: width * 1.0,
          height: height,
          child: Column(
            children: [
              Container(
                  alignment: Alignment.topCenter,
                  height: height * 0.1,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    child: Text("CG Homepage!",
                        style: TextStyle(color: Colors.white)),
                  )),
              Container(
                padding: EdgeInsets.only(top: height * 0.05),
                child: Text("Hello Tommy!"),
                color: Colors.white,
                height: height * 0.2,
              )
            ],
          ))
    ]);
  }

  Widget webBuilder(context) {
    print("here");
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
            width: width,
            height: height,
            color: Colors.red,
            child: Image(
                image: AssetImage('assets/oriental-tiles.png'),
                fit: BoxFit.cover)),
        Container(
            width: width,
            height: height,
            child: Column(
              children: [
                Container(
                    alignment: Alignment.topCenter,
                    height: height * 0.1,
                    width: width * 0.95,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25.0),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.blueGrey,
                            blurRadius: 4,
                            offset: Offset(4, 8))
                      ],
                    ),
                    child: Container(
                        alignment: Alignment.center,
                        child: Text("Conner Gulley",
                            style: GoogleFonts.josefinSans(
                                fontSize: 40.0,
                                fontWeight: FontWeight.w100,
                                color: Colors.black)))),
              ],
            ))
      ],
    );
  }

  Widget size_decider(BuildContext context) {
    print("deciding");
    if (MediaQuery.of(context).size.width < 400) {
      print("are we moving?");
      return mobileBuilder(context);
    } else {
      print("Should be here!");
      return webBuilder(context);
    }
  }

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: size_decider(context),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
