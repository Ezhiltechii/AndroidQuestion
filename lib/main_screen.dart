import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:question_answer/android_question.dart';
import 'package:question_answer/shortcutkeys.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Android Questions")),
      body: const Center(
        child: Text('Java Question....!'),
      ),
      drawer: _sideDrawer(),
    );
  }

  _sideDrawer() {
   return Drawer(
     backgroundColor: Colors.red,
     child: ListView(
       padding: EdgeInsets.zero,
       children: <Widget>[
         _headerLayout(),
         _navigationViewItemList()
        ]

     ),
   );
  }
  _headerLayout() {
     return Padding(
     padding: EdgeInsets.fromLTRB(10, 70, 10, 10),
     child: Container(

       padding: EdgeInsets.only(bottom: 30),
       decoration: BoxDecoration(
           border: Border(
               bottom:
               BorderSide(color: Colors.white70)
           )
       ),
       child: Row(
         children: [
           CircleAvatar(
             radius: 40,
          //   backgroundColor : Colors.green,
             backgroundImage : NetworkImage("https://randomuser.me/api/portraits/men/11.jpg"),
           ),
           Flexible(
             child: Padding(
               padding: const EdgeInsets.all(10),
               child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text(
                         "Android Java Q/A",
                         style: TextStyle(
                             fontSize: 18,
                             color: Colors.black,


                         )
                     ),
                     SizedBox(
                       height: 10,
                     ),
                     Text(
                         "version ",
                         style: TextStyle(fontSize: 14, color: Colors.black)
                     )
                   ]),
             ),
           )
         ],
       ),
     ),
   );
  }

  _navigationViewItemList() {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 20),
      child: Column(
        children: <Widget>[
          Container(
            child: ListTile(

              title: Text("Java Questions"),
              trailing: Icon(
                Icons.navigate_next,
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SplashScreen()),
                );
              },
            ),
            decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey.shade300, width: 0.5),
                )),
          ),
          Container(
            child: ListTile(

              title: Text("Android Questions"),
              trailing: Icon(
                Icons.navigate_next,
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const JavaQuestion()),
                );
              },
            ),
            decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.red.shade700, width: 0.5),
                )),
          ),
          Container(
            child: ListTile(

              title: Text("Abbreviation"),
              trailing: Icon(
                Icons.navigate_next,
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const JavaQuestion()),
                );
              },
            ),
            decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey.shade300, width: 0.5),
                )),
          ),
          Container(
            child: ListTile(

              title: Text("Shortcut Keys"),
              trailing: Icon(
                Icons.navigate_next,
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  ShortcutKeys()),
                );
              },
            ),
            decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey.shade300, width: 0.5),
                )),
          ),
          Container(
            child: ListTile(

              title: Text("Android Tools"),
              trailing: Icon(
                Icons.navigate_next,
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const JavaQuestion()),
                );
              },
            ),
            decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey.shade300, width: 0.5),
                )),
          ),
          Container(
            child: ListTile(

              title: Text("Developer Profile"),
              trailing: Icon(
                Icons.navigate_next,
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const JavaQuestion()),
                );
              },
            ),
            decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey.shade300, width: 0.5),
                )),
          ),
          Container(
            child: ListTile(

              title: Text("Company Profile"),
              trailing: Icon(
                Icons.navigate_next,
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const JavaQuestion()),
                );
              },
            ),
            decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey.shade300, width: 0.5),
                )),
          ),

        ],
      ),
    );
  }


}
