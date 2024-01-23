import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
      theme: ThemeData(primarySwatch: Colors.amber),
    );
  }
}

class HomeActivity extends StatelessWidget {


  var phoneText=TextEditingController();
  var passText=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.amber,
      child: Center(
        child: Container(

          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller:phoneText ,
                  keyboardType: TextInputType.number,

                  decoration: InputDecoration(
                    prefixIcon:Icon(Icons.phone,color: Colors.black) ,
                    hintText: "Enter Your Number",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(width: 2, color: Colors.pink.shade50),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(width: 2, color: Colors.blueAccent),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(width: 2, color: Colors.black),
                ),
              )),
              Container(
                height: 10,
              ),
              TextField(
                keyboardType: TextInputType.visiblePassword,


                controller: passText,
                  obscureText: true,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.remove_red_eye_outlined,color: Colors.black),
                    hintText: "Enter your Password",
                    enabledBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(width: 2, color: Colors.pink.shade50),
                    ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(width: 2, color: Colors.blueAccent),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(width: 2, color: Colors.black),
                ),
              )),
              Container(height: 10,),
              ElevatedButton(
                  style:ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                  ),onPressed: (){
               String mtext1=phoneText.text.toString();
               String mPass1=passText.text;
               print('Email:$mtext1,Password:$mPass1');
              }, child: Text("Login",style: TextStyle(
                color: Colors.white,
                fontSize: 14
              ),))
            ],
          ),
        ),
      ),
    ));
  }
}
