import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:provider/provider.dart';

import '../Provider_class/Education_provider.dart';

class Uri_open_screen extends StatefulWidget {
  const Uri_open_screen({Key? key}) : super(key: key);

  @override
  State<Uri_open_screen> createState() => _Uri_open_screenState();
}

class _Uri_open_screenState extends State<Uri_open_screen> {

  Education_provider? providerF;
  Education_provider? providerT;

  @override
  Widget build(BuildContext context) {

    providerF = Provider.of<Education_provider>(context, listen: false);
    providerT = Provider.of<Education_provider>(context, listen: true);

    int index = ModalRoute.of(context)!.settings.arguments as int;

    return SafeArea(
      child: Scaffold(
        body: InAppWebView(
          initialUrlRequest: URLRequest(url: Uri.parse("${providerT!.logoList[index].uri}")),
          onLoadError: (controller, url, code, message) {
            providerT!.webViewController=controller;
          },
          onLoadStop: (controller, url) {
            providerT!.webViewController=controller;
          },
          onLoadStart: (controller, url) {
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
