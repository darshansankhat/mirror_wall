import 'package:flutter/material.dart';
import 'package:mirror_wall/Education_app/Provider_class/Education_provider.dart';
import 'package:provider/provider.dart';

class Education_screen extends StatefulWidget {
  const Education_screen({Key? key}) : super(key: key);

  @override
  State<Education_screen> createState() => _Education_screenState();
}

class _Education_screenState extends State<Education_screen> {
  Education_provider? providerF;
  Education_provider? providerT;

  @override
  Widget build(BuildContext context) {
    providerF = Provider.of<Education_provider>(context, listen: false);
    providerT = Provider.of<Education_provider>(context, listen: true);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(
          Icons.menu,
          size: 25,
          color: Colors.white,
        ),
        title: Text(
          "Education power",
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
                Navigator.pushNamed(context, "uriedu",arguments: index);
              },child: app(index)),
            );
          },
          itemCount: providerF!.logoList.length,
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
                    image: AssetImage("${providerF!.logoList[index].img}"))),
          ),
          SizedBox(height: 10),
          Text("😎${providerF!.logoList[index].name}😎")
        ],
      ),
    );
  }
}
