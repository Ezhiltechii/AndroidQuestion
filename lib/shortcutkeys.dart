import 'package:flutter/material.dart';


class ShortcutKeys extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PageView',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  PageController controller = PageController();
  final List<Widget> _list = <Widget>[
    Center(child: Text("Ctrl A")),
    Center(child: Text("Ctrl B")),
    Center(child: Text("Page 3")),
    Center(child: Text("Page 4")),
  ];
  int _curr = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //  backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text("GeeksforGeeks"),
       // backgroundColor: Colors.green,
       //  actions: <Widget>[
       //
       //    Padding(
       //      padding: const EdgeInsets.all(8.0),
       //      child: Text(
       //        "Page: " + (
       //            _curr + 1).toString() + "/" + _list.length.toString(),
       //      ),
       //    )
       //  ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: PageView(
          children:
          _list,
          scrollDirection: Axis.horizontal,
          controller: controller,
          onPageChanged: (num) {
            setState(() {
              _curr = num;
            });
          },

        ),
      ),

    );
  }
}

// class Pages extends StatelessWidget {
//   final text;
//   Pages({this.text});
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children:<Widget>[
//             Text(text,
//               textAlign: TextAlign.center,
//               style: const TextStyle(
//                 fontSize: 30,
//                   fontWeight:FontWeight.bold),
//             ),
//             // Padding(
//             //   padding: const EdgeInsets.all(3.0),
//             //   child: Text(
//             //     "Page: "+(
//             //         _curr+1).toString()+"/"+_list.length.toString(),textScaleFactor: 2,),
//             // )
//
//           ]
//       ),
//     );
//   }
// }
