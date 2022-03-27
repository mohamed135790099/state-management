import'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/provider.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title:"Consumer vs Selectors",
      home:ChangeNotifierProvider<MyProvider2>(
          create:(_)=>MyProvider2(),
          child: MyHomePage()
      ),
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title:Text("Example"),),
      body:Center(
        child:DefaultTextStyle(
          style: TextStyle(fontSize:30,color:Colors.black),
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              Text("${Provider.of<MyProvider2>(context,listen:true).count}"),
              Text("${Provider.of<MyProvider2>(context,listen:false).count}"),
              Text("${context.watch<MyProvider2>().count}"),
              Consumer<MyProvider2>(builder: (context,val,_)=>Text("${val.count}")),
              Selector<MyProvider2,int>(builder:(context,value,_)=>Text("${value}"), selector: (context,value)=>value.count),
              Text("${context.select<MyProvider2,int>((value) => value.count)}"),

            ],
          ),

        ),
      ),
      floatingActionButton:Consumer<MyProvider2>(
        builder:(context,value,_)=>
         FloatingActionButton(
          child:Icon(Icons.add),
          onPressed:(){
            value.increment();
          },
        ),
      ),
    );
  }
}

