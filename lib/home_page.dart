import 'package:flutter/material.dart';
import 'package:flutter_image_example/new_page.dart';
import 'package:fluttertoast/fluttertoast.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Image Example"),
      ) ,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [

            Image.asset("assets/images/logo.png",width: 200,height: 200,),
            Text("This is a flutter logo"),
            Text("Flutter"),

            Image.network("https://media-cldnry.s-nbcnews.com/image/upload/t_fit-760w,f_auto,q_auto:best/rockcms/2024-08/240806-Muhammad-Yunus-vl-312p-b5e409.jpg",width: 200,height: 200,),
            
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text("Dr. Muhammad Yunus", style: TextStyle(
                fontSize:20,fontWeight: FontWeight.bold,
                color: Colors.blue
              ),),
            ),
            
            ElevatedButton(
                onPressed: (){
                    // for going one page to another page
                  //Navigator.push(context, MaterialPageRoute(builder: (context)=>NewPage()));

                  Fluttertoast.showToast(msg: "why click me??"); //for toast msg


                },

                child: Text("Click Me"))

          ],
        ),
      ),
    );
  }
}
