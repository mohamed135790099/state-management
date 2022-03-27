import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/Myprovider.dart';
import 'mydrawer.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title:"Provider Example",
      home:ChangeNotifierProvider<MyProvider>(
          create:(_)=>MyProvider(),
          child: MyHomPageState()
      ),
    );
  }
}


class MyHomPageState extends StatefulWidget {
  const MyHomPageState({Key? key}) : super(key: key);

  @override
  _MyHomPageStateState createState() => _MyHomPageStateState();
}

class _MyHomPageStateState extends State<MyHomPageState> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title:"Provider Example",
      themeMode:Provider.of<MyProvider>(context).tm,
      theme:ThemeData(primaryColor:Colors.amber),
      darkTheme:ThemeData(primaryColor:Colors.black),
      home:Scaffold(
        appBar:AppBar(title:Text("Provider Example"),),
        body:null,
        drawer:MyDrawer(),
      ),
    );
  }
}
