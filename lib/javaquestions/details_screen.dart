import 'package:flutter/material.dart';
import 'package:question_answer/javaquestions/java_data.dart';


class DetailScreen extends StatefulWidget {
  final Note note;

  DetailScreen(this.note);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {


  @override
  Widget build(BuildContext context) {
    final note = widget.note;
    return Scaffold(
      appBar: AppBar(
        title: Text('Java Answer'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: Image.asset('assets/images/${note.image}').image,
              ),
              // Hero(
              //  // tag: note.image,
              //   child: Image.asset('assets/${note.image}'),
              // ),
              // SizedBox(height: 8),
              Text(
                note.title,
                style: styleWidget(),
                // style: TextStyle(
                //   fontSize: 18,
                //   fontWeight: FontWeight.bold,
                // ),
              ),

              SizedBox(
                height: MediaQuery.of(context).size.height/8,
              ),
              Divider(
                thickness: 2,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height/9,
              ),
              Text(note.content,
                  style: styleWidget()
              // style: TextStyle(
              //   fontSize: 20,
              // ),
              ),
            ],
          ),
        ),
      ),
    );
  }



}