import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:provider/provider.dart';

import '../Provider_class/Ott_provider.dart';

class Uri_screen extends StatefulWidget {
  const Uri_screen({Key? key}) : super(key: key);

  @override
  State<Uri_screen> createState() => _Uri_screenState();
}

class _Uri_screenState extends State<Uri_screen> {

  Ott_provider? providerF;
  Ott_provider? providerT;

  @override
  Widget build(BuildContext context) {

    providerF=Provider.of<Ott_provider>(context,listen: false);
    providerT=Provider.of<Ott_provider>(context,listen: true);

    int index=ModalRoute.of(context)!.settings.arguments as int;

    return SafeArea(
      child: Scaffold(
        body: InAppWebView(
          initialUrlRequest: URLRequest(url: Uri.parse("${providerT!.appList[index].uri}")),
          onLoadStart: (controller, url) {
            providerT!.webViewController=controller;
          },
          onLoadStop: (controller, url) {
            providerT!.webViewController=controller;
          },
          onLoadError: (controller, url, code, message) {
            providerT!.webViewController=controller;
          },
          onProgressChanged: (controller, progress) {
            providerT!.webViewController=controller;
          },
        ),
      ),
    );
  }
}
