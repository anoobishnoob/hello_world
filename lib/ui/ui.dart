import 'package:flutter/material.dart';

class ScaffoldExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scaffold"),
        centerTitle: true,
      ),
      body: Center(
        child: Text("hello flutter",
        textDirection: TextDirection.ltr,),
      ),
    );
  }
}


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //return Center(
    //child: Text("Hello Flutter", textDirection: TextDirection.ltr,),
    //);
    return Material(
        color: Colors.cyanAccent,
        child: Center(
            child: Text("Hello Flutter",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 23.4,
                  fontStyle: FontStyle.italic),)
        ));
  }
}
