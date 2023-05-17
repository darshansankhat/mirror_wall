import 'package:flutter/cupertino.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:mirror_wall/OTT_app/Model_class/OTT_model.dart';

class Ott_provider extends ChangeNotifier
{

  InAppWebViewController? webViewController;

  List<Ott_model> appList=[
    Ott_model(name: "Netflix",img: "assets/image/ott_img/o1.png",uri: "https://www.netflix.com/in/",),
    Ott_model(name: "Prime video",img: "assets/image/ott_img/o2.png",uri: "https://www.primevideo.com/",),
    Ott_model(name: "Disney",img: "assets/image/ott_img/o3.png",uri: "https://www.disney.in/",),
    Ott_model(name: "Youyube",img: "assets/image/ott_img/o4.png",uri: "https://www.youtube.com/",),
    Ott_model(name: "https://www.youtube.com/",img: "assets/image/ott_img/o5.png",uri: "https://www.hotstar.com/in",),
    Ott_model(name: "Sonyliv",img: "assets/image/ott_img/o6.png",uri: "https://www.sonyliv.com/",),
    Ott_model(name: "Mx player",img: "assets/image/ott_img/o7.png",uri: "https://www.mxplayer.in/",),
    Ott_model(name: "Jiocinema",img: "assets/image/ott_img/o8.png",uri: "https://www.jiocinema.com/",),
    Ott_model(name: "zee5",img: "assets/image/ott_img/o9.png",uri: "https://www.zee5.com/",),
    Ott_model(name: "Voot",img: "assets/image/ott_img/o10.png",uri: "https://www.voot.com/",),
  ];
}