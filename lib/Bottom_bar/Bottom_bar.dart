import 'package:flutter/material.dart';
import 'package:mirror_wall/Bottom_provider/Bottom_provider.dart';
import 'package:provider/provider.dart';

class Bottom_bar extends StatefulWidget {
  const Bottom_bar({Key? key}) : super(key: key);

  @override
  State<Bottom_bar> createState() => _Bottom_barState();
}

class _Bottom_barState extends State<Bottom_bar> {

  Bottom_provider? providerF;
  Bottom_provider? providerT;

  @override
  Widget build(BuildContext context) {

    providerF=Provider.of<Bottom_provider>(context,listen: false);
    providerT=Provider.of<Bottom_provider>(context,listen: true);

    return SafeArea(
      child: Scaffold(
        body: providerT!.screenList[providerT!.i],
        bottomNavigationBar: BottomNavigationBar(
          elevation: 1,
          fixedColor: Colors.amber,
          backgroundColor: Colors.white10,
          type: BottomNavigationBarType.fixed,
          currentIndex: providerT!.i,
          onTap: (value) {
            providerF!.selectScreen(value);
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.school_outlined),label: "Education"),
            BottomNavigationBarItem(icon: Image.asset("assets/image/browser_img/l.png",height: 30,width: 30,),label: "Browser"),
            BottomNavigationBarItem(icon: Icon(Icons.movie_creation_outlined),label: "OTT"),
          ],
        ),
      ),
    );
  }
}
