import 'package:flutter/material.dart';

class ScaffoldExample extends StatelessWidget {
  _tapButton(){
    debugPrint("Button is clicked");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scaffold"),
        centerTitle: true,
        backgroundColor: Colors.greenAccent.shade700,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.email), onPressed: () => debugPrint("Email Tapped!")),
            IconButton(icon: Icon(Icons.audiotrack), onPressed: () => debugPrint("Note Tapped!")),
            IconButton(icon: Icon(Icons.ac_unit), onPressed: ()=> _tapButton(), alignment: Alignment.centerLeft,) // allignment apears to do nothing here
          ],
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purpleAccent,
        child: Icon(Icons.add),
        onPressed: ()=> debugPrint("button pressed"),

      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.arrow_back), title: Text("arrow")),
        BottomNavigationBarItem(icon: Icon(Icons.accessible_forward), title: Text("access")),
        BottomNavigationBarItem(icon: Icon(Icons.bluetooth), title: Text("bleth"))
      ], onTap: (int index) => debugPrint("bottom bar touched on item : $index"),),
      backgroundColor: Colors.lightBlueAccent.shade200,
      body: Container(
        alignment: Alignment.center,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomButton()

    ],
      ),
    ));
  }
}

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        final snackBar = SnackBar(content: Text("Suprise Bitch"),
        backgroundColor: Colors.black);
        Scaffold.of(context).showSnackBar(snackBar);
      },
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.pink.shade100,
          borderRadius: BorderRadius.circular(8.0)
        ),
        child: Text("Button"),
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
