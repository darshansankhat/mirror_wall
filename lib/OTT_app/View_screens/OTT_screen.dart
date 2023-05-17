import 'package:flutter/material.dart';
import 'package:mirror_wall/OTT_app/Provider_class/Ott_provider.dart';
import 'package:provider/provider.dart';

class OTT_screen extends StatefulWidget {
  const OTT_screen({Key? key}) : super(key: key);

  @override
  State<OTT_screen> createState() => _OTT_screenState();
}

class _OTT_screenState extends State<OTT_screen> {

  Ott_provider? providerF;
  Ott_provider? providerT;

  @override
  Widget build(BuildContext context) {

    providerF=Provider.of<Ott_provider>(context,listen: false);
    providerT=Provider.of<Ott_provider>(context,listen: true);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(
          Icons.menu,
          size: 25,
          color: Colors.white,
        ),
        title: Text(
          "😎🤩😍  OTT  😍🤩😎",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          Icon(
            Icons.person,
            size: 25,
            color: Colors.white,
          )
        ],
        elevation: 1,
        shadowColor: Colors.white,
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, mainAxisExtent: 160),
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(5),
              child: InkWell(onTap: () {
                Navigator.pushNamed(context, "uri",arguments: index);
              },child: app(index)),
            );
          },
          itemCount: 10,
        ),
      ),
    );
  }
  Widget app(int index) {
    return Container(
      height: 150,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                image: DecorationImage(
                    image: AssetImage("${providerF!.appList[index].img}"))),
          ),
          SizedBox(height: 10),
          Text("😎${providerF!.appList[index].name}😎")
        ],
      ),
    );
  }
}
