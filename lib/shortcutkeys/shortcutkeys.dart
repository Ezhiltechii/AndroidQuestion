 import 'package:flutter/material.dart';

class ShortcutKeys extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ShortcutKeys> {

  PageController controller=PageController();
  List<Widget> _list = <Widget> [
    new Center(
        child:new Pages(text: "Ctrl+T \n Open a new tab",)),
    new Center(child:new Pages(text: "Page 2",)),
    new Center(child:new Pages(text: "Page 3",)),
    new Center(child:new Pages(text: "Page 4",)),
    new Center(child:new Pages(text: "Page 4",))
  ];
  int _curr = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,

        appBar:AppBar(
          title: Text("GeeksforGeeks"),
          backgroundColor: Colors.blueAccent,
          actions: <Widget>[

            Padding(
              padding: const EdgeInsets.only(top: 15.0,right: 10),
              child: Text(
                "Page: "+(
                    _curr+1).toString()+ "/" +_list.length.toString(),
                style: TextStyle(
                  fontSize: 20
                ),

                ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 100, bottom: 100),
          child: Container(
            color: Colors.redAccent,
           child:  PageView(

              children: _list,
              scrollDirection: Axis.horizontal,


              physics: BouncingScrollPhysics(),
              controller: controller,
              onPageChanged: (num){
                setState(() {
                  _curr = num;
                });
              },
            ),
          ),
        )


    );
  }
}

class Pages extends StatelessWidget {
  final text;
  Pages({this.text});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[
            Text(text,textAlign: TextAlign.center,style: TextStyle(
                fontSize: 30,fontWeight:FontWeight.bold),),
          ]
      ),
    );
  }
}


