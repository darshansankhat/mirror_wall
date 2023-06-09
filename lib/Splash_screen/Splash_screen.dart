import 'package:flutter/material.dart';

class Splash_screen extends StatefulWidget {
  const Splash_screen({Key? key}) : super(key: key);

  @override
  State<Splash_screen> createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {
  @override
  Widget build(BuildContext context) {

    Future.delayed(Duration(seconds: 5),() {
      Navigator.pushReplacementNamed(context, "/");
    },);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/image/browser_img/l.png",height: 200,width: 200,),
              SizedBox(height: 20),
              Text("Darshan App",style: TextStyle(fontSize: 30,color: Colors.amber),),
              SizedBox(height: 20),
              CircularProgressIndicator(color: Colors.amber,backgroundColor: Colors.amber.shade50,),
            ],
          ),
        ),
      ),
    );
  }
}
