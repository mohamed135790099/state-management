import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Widget Life Cycle",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    print("initState Was Called");
    // TODO: implement initState
    super.initState();
  }

  @override
  void didUpdateWidget(covariant MyHomePage oldWidget) {
    print("didUpdateWidget Was Called");
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    print("dispose");
    // TODO: implement dispose
    super.dispose();
  }
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    print("build was build");
    return Scaffold(
      appBar: AppBar(
        title: Text("Widget Life Cycle"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Text(
              "$_counter",
              style: TextStyle(fontSize: 45),
            ),
            RaisedButton(
              child:Text("Go TO Anther Screen"),
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx){
                  return MaterialApp(
                    home: Scaffold(
                      appBar:AppBar(title:Text("I Want Work"),),
                    ),
                  );
                }));
              },
            ),
          ],
        ),
      ),
      floatingActionButton:FloatingActionButton(
        child:Icon(Icons.add),
        onPressed:(){
          setState(() {

            _counter++;
          });
        },
      ),
    );
  }
}
