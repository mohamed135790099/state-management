import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:state_management/provider.dart';
void main(){
  runApp(
   MultiProvider(
     providers: [
        ChangeNotifierProvider<MyProvider2>(create:(_)=>MyProvider2())
     ],
       child: MyApp()
   )

  );
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title:"Dealing With Provider",
      home: MyHomePage()

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
        appBar:AppBar(title:Text("Dealing With Provider"),),
        body:Center(
          child:Column(
            mainAxisSize:MainAxisSize.min,
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              Text("You Have Pushed The Button This May Times:"),
              Consumer<MyProvider2>(builder: (context,value,_)=>Text("${value.count}",style:TextStyle(fontSize:50),),)
            ]
          ),
        ),
        floatingActionButton:FloatingActionButton(
          child:Icon(Icons.add),
          onPressed:(){
            Provider.of<MyProvider2>(context,listen:false).increment();
          },
        ),

      );
  }
}
