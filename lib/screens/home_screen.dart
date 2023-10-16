import 'package:festival_app/model/festival_model.dart';
import 'package:festival_app/model/category_model.dart';
import 'package:festival_app/utils/global.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    Global.g1.imageList.map((e) {
      Festivalmodal f1 = Festivalmodal.fromMap(e);
      Global.g1.modalList.add(f1);
    }).toList();
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            "Festival App",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/appbg.jpg"), fit: BoxFit.cover)),
            ),
            GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisExtent: 195),
              itemCount: Global.g1.categoryList.length,
              itemBuilder: (context, index) {
                return containerTile(Global.g1.categoryList[index]);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget containerTile(CategoryModal c1) {
    return InkWell(
      onTap: () {
        List<Festivalmodal> l1 = [];
        Global.g1.catname = c1.name;
        for (var x in Global.g1.modalList) {
          if (x.category == c1.name) {
            l1.add(x);
          }
        }
        Navigator.pushNamed(context, 'edit', arguments: l1);
      },
      child: Container(
        padding: EdgeInsets.all(10),
        margin: const EdgeInsets.all(10),
        height: MediaQuery.of(context).size.height * 0.20,
        width: MediaQuery.of(context).size.width * 0.20,
        decoration: BoxDecoration(
            color: c1.color, borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
                alignment: Alignment.center,
                child: Image.asset(
                  "${c1.image}",
                  height: 105,
                  width: 105,
                )),
            Spacer(),
            Text(
              "${c1.name}",
              style: GoogleFonts.openSans(
                fontSize: 17,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// ListView.builder(itemCount:Global.g1.categoryList.length,itemBuilder: (context, index) {
// return Container(
// margin: EdgeInsets.all(10),
// height: MediaQuery.of(context).size.height*0.20,
// width: MediaQuery.of(context).size.width,
// decoration: BoxDecoration(color: Colors.orange),
// child: Row(
// children: [
// Text("${Global.g1.categoryList[index].name}"),
// ],
// ),
// );
// },),
