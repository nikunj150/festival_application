import 'package:festival_app/model/festival_model.dart';
import 'package:festival_app/utils/color_list.dart';
import 'package:festival_app/utils/global.dart';
import 'package:festival_app/utils/imagelist.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditScreen extends StatefulWidget {
  const EditScreen({Key? key}) : super(key: key);

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  @override
  // TextAlign txtAlign = TextAlign.center;
  bool bold = true;
  bool italic = false;
  bool bgindex = true;
  int colorbgindex = 0;
  int text = 2;
  int imageindex = 0;
  int fontstyleindex = 0;
  bool isimageindex = true;
  Alignment txtAlign = Alignment.center;

  Widget build(BuildContext context) {
    List<Festivalmodal> l1 =
        ModalRoute.of(context)!.settings.arguments as List<Festivalmodal>;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade50,
        appBar: AppBar(
            backgroundColor: Colors.grey.shade200,
            title: Text(
              "Edit post",
              style: TextStyle(color: Colors.black),
            ),
            centerTitle: true),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      height: MediaQuery.of(context).size.height * 0.35,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: colorList[colorbgindex],
                          borderRadius: BorderRadius.circular(4)),
                    ),
                    Container(
                        margin: EdgeInsets.all(10),
                        height: MediaQuery.of(context).size.height * 0.35,
                        width: double.infinity,
                        child: Visibility(
                            visible: isimageindex,
                            child: Image.asset(
                              "${l1[imageindex].image}",
                              fit: BoxFit.cover,
                            ))),
                    Container(
                      padding: EdgeInsets.all(5),
                      height: MediaQuery.of(context).size.height * 0.35,
                      width: double.infinity,
                      margin: EdgeInsets.all(10),
                      alignment: txtAlign,
                      child: Text(
                        "${Global.g1.titletxt.text}",
                        style: TextStyle(
                          fontFamily: fontList[fontstyleindex],
                          fontSize: 20,
                          fontWeight:
                              bold ? FontWeight.bold : FontWeight.normal,
                          fontStyle:
                              italic ? FontStyle.italic : FontStyle.normal,
                          color: colorList[text],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 100),
                Container(
                  margin: EdgeInsets.all(10),
                  height: MediaQuery.of(context).size.height * 0.34,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Colors.grey.shade300),
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    bold = !bold;
                                  });
                                },
                                icon: Icon(Icons.format_bold)),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    italic = !italic;
                                  });
                                },
                                icon: Icon(Icons.format_italic)),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    txtAlign = Alignment.centerLeft;
                                  });
                                },
                                icon: Icon(Icons.format_align_left)),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    txtAlign = Alignment.center;
                                  });
                                },
                                icon: Icon(Icons.format_align_center)),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    txtAlign = Alignment.centerRight;
                                  });
                                },
                                icon: Icon(Icons.format_align_right)),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                            title: TextField(
                                              controller: Global.g1.titletxt,
                                              decoration: InputDecoration(
                                                label: Text("Enter Text"),
                                              ),
                                            ),
                                            actions: [
                                              ElevatedButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Text(
                                                  "Add",
                                                ),
                                              ),
                                            ],
                                          );
                                        });
                                  });
                                },
                                icon: Icon(Icons.text_fields)),
                            IconButton(
                                onPressed: () {
                                  setState(
                                    () {
                                      if (text < colorList.length - 1) {
                                        text++;
                                      } else {
                                        text = 0;
                                      }
                                    },
                                  );
                                },
                                icon: Icon(Icons.format_color_text_outlined)),
                            IconButton(
                                onPressed: () {
                                  setState(
                                    () {
                                      isimageindex = false;
                                      if (colorbgindex < colorList.length - 1) {
                                        colorbgindex++;
                                      } else {
                                        colorbgindex = 0;
                                      }
                                    },
                                  );
                                },
                                icon: Icon(Icons.color_lens_rounded)),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.restart_alt)),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 90,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: l1.length,
                              itemExtent: 100,
                              itemBuilder: (context, index) {
                                return Container(
                                  margin: EdgeInsets.all(5),
                                  height:
                                      MediaQuery.of(context).size.height * 0.10,
                                  width:
                                      MediaQuery.of(context).size.width * 0.10,
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        imageindex = index;
                                        isimageindex = true;
                                      });
                                    },
                                    child: Image.asset("${l1[index].image}",
                                        fit: BoxFit.cover),
                                  ),
                                );
                              },
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: ListView.builder(
                              itemCount: fontList.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {
                                    setState(() {
                                      fontstyleindex = index;
                                    });
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Style",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontFamily: fontList[index],
                                          color: Colors.black),
                                    ),
                                  ),
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
// Container(
// margin: EdgeInsets.all(10),
// height: MediaQuery.of(context).size.height * 0.34,
// width: MediaQuery.of(context).size.width,
// decoration: BoxDecoration(color: Colors.grey.shade300),
// child: Column(
// children: [
// SingleChildScrollView(
// scrollDirection: Axis.horizontal,
// child: Row(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// IconButton(
// onPressed: () {
// setState(() {
// bold = !bold;
// });
// },
// icon: Icon(Icons.format_bold)),
// IconButton(
// onPressed: () {
// setState(() {
// italic = !italic;
// });
// },
// icon: Icon(Icons.format_italic)),
// IconButton(
// onPressed: () {
// setState(() {
// txtAlign = Alignment.centerLeft;
// });
// },
// icon: Icon(Icons.format_align_left)),
// IconButton(
// onPressed: () {
// setState(() {
// txtAlign = Alignment.center;
// });
// },
// icon: Icon(Icons.format_align_center)),
// IconButton(
// onPressed: () {
// setState(() {
// txtAlign = Alignment.centerRight;
// });
// },
// icon: Icon(Icons.format_align_right)),
// IconButton(
// onPressed: () {
// setState(() {
// showDialog(
// context: context,
// builder: (context) {
// return AlertDialog(
// title: TextField(
// controller: Global.g1.titletxt,
// decoration: InputDecoration(
// label: Text("Enter Text"),
// ),
// ),
// actions: [
// ElevatedButton(
// onPressed: () {
// Navigator.pop(context);
// },
// child: Text(
// "Add",
// ),
// ),
// ],
// );
// });
// });
// },
// icon: Icon(Icons.text_fields)),
// IconButton(
// onPressed: () {
// setState(
// () {
// if (text < colorList.length - 1) {
// text++;
// } else {
// text = 0;
// }
// },
// );
// },
// icon: Icon(Icons.format_color_text_outlined)),
// IconButton(
// onPressed: () {},
// icon: Icon(Icons.restart_alt)),
// ],
// ),
// ),
// Column(
// children: [
// SizedBox(
// height: 90,
// child: ListView.builder(
// scrollDirection: Axis.horizontal,
// itemCount: l1.length,
// itemExtent: 100,
// itemBuilder: (context, index) {
// return Container(
// height: MediaQuery.of(context).size.height *
// 0.10,
// width: MediaQuery.of(context).size.width *
// 0.10,
// child: InkWell(
// onTap: () {
// setState(() {
// imageindex = index;
// });
// },
// child: Image.asset("${l1[index].image}",
// fit: BoxFit.cover),
// ),
// );
// },
// ),
// ),
//
// ],
// ),
// ],
// ),
// ),
