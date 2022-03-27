import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Myprovider.dart';

class MyDrawer extends StatefulWidget {
  

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(40),
              child: Text("Light"),
            ),
            Switch(
              value:Provider.of<MyProvider>(context,listen:true).swVale,
              onChanged: (bool val)=>Provider.of<MyProvider>(context,listen:false).switchChange(val),
              activeColor:Colors.black,
              inactiveThumbColor:Colors.pink,
            ),
            Padding(
              padding: EdgeInsets.all(40),
              child: Text("Dark"),
            ),
          ],
        ),
      ),
    );
  }

}
