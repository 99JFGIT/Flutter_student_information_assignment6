import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_student_information/add_notes.dart';
import 'package:flutter_student_information/home_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'IIUC STUDENT INFORMATION MEDIA',
          style: TextStyle(color: Colors.greenAccent.shade200
              ,fontSize: 18,fontWeight: FontWeight.bold,
          ),

        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 5.15, right: 5.15, bottom: 5.15),
              child: SizedBox(
                  width: 200,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>AddNotes()));
                      Fluttertoast.showToast(msg: "Going To Student Info Adding Page");
                    },
                    child: Text("Add Student",style: TextStyle(
                        fontSize: 16,fontWeight: FontWeight.normal,
                        color: Colors.green
                    ),),)),
            ),

            const SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.only(top: 20, left: 5.15, right: 5.15, bottom: 5.15),
              child: SizedBox(
                  width: 200,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                      Fluttertoast.showToast(msg: "Going To View All Students Info Page");
                    },
                    child: Text("View All Students",style: TextStyle(
                        fontSize: 16,fontWeight: FontWeight.normal,
                        color: Colors.green
                    ),),)),
            ),

          ],
        ),
      ),
    );
  }
}
