import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:mirror_wall/Education_app/Model_class/Education_model.dart';

class Education_provider extends ChangeNotifier
{

  InAppWebViewController? webViewController;

  List<Education_model> logoList=[
    Education_model(name: "Wikipedia",img: "assets/image/education_img/l1.png",uri: "https://www.wikipedia.org/",),
    Education_model(name: "W3Schools",img: "assets/image/education_img/l2.png",uri: "https://www.w3schools.com/",),
    Education_model(name: "JavatPoint",img: "assets/image/education_img/l3.png",uri: "https://www.javatpoint.com/",),
    Education_model(name: "TutorialsPoint",img: "assets/image/education_img/l4.png",uri: "https://www.tutorialspoint.com/",),
    Education_model(name: "Byju's",img: "assets/image/education_img/l5.png",uri: "https://byjus.com/",),
    Education_model(name: "Duolingo",img: "assets/image/education_img/l6.png",uri: "https://www.duolingo.com/",),
    Education_model(name: "Vedantu",img: "assets/image/education_img/l7.png",uri: "https://www.vedantu.com/",),
    Education_model(name: "topper",img: "assets/image/education_img/l8.png",uri: "https://www.toppr.com/",),
    Education_model(name: "Unacademy",img: "assets/image/education_img/l9.png",uri: "https://unacademy.com/",),
    Education_model(name: "Brainly",img: "assets/image/education_img/l10.png",uri: "https://brainly.in/",),
  ];
}