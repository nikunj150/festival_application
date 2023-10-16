import 'dart:ui';

import 'package:festival_app/model/festival_model.dart';
import 'package:festival_app/model/category_model.dart';
import 'package:flutter/material.dart';

class Global{

  static Global g1 = Global();

  List<CategoryModal>categoryList=[
    CategoryModal(image: "assets/images/holi.png",name:'Holi',color:Colors.white),
    CategoryModal(image: "assets/images/diwali.png",name:'Diwali',color:Colors.white),
    CategoryModal(image: "assets/images/kite.png",name:'Kite Festival',color:Colors.white),
    CategoryModal(image: "assets/images/christmas.png",name:'Christmas',color:Colors.white),
    CategoryModal(image: "assets/images/navratri.png",name:'Navratri',color:Colors.white),
    CategoryModal(image: "assets/images/janmashtami.png",name:'Janmashtami',color:Colors.white),
    CategoryModal(image: "assets/images/rakhi.png",name:'Raksha Bandhan',color:Colors.white),
    CategoryModal(image: "assets/images/ganesh.png",name:'Ganesh Chaturthi',color:Colors.white),
    CategoryModal(image: "assets/images/independence.png",name:'Independence Day',color:Colors.white),
    CategoryModal(image: "assets/images/republic.png",name:'Republic Day',color:Colors.white),
  ];

  List<Map>imageList=[

    {"image":"assets/images/bg/christ1.jpg","category":"Christmas"},
    {"image":"assets/images/bg/christ2.jpg","category":"Christmas"},
    {"image":"assets/images/bg/christ3.jpg","category":"Christmas"},
    {"image":"assets/images/bg/christ4.jpg","category":"Christmas"},
    {"image":"assets/images/bg/christ5.jpg","category":"Christmas"},

    {"image":"assets/images/bg/holi1.jpg","category":"Holi"},
    {"image":"assets/images/bg/holi2.jpg","category":"Holi"},
    {"image":"assets/images/bg/holi3.jpg","category":"Holi"},
    {"image":"assets/images/bg/holi4.jpg","category":"Holi"},
    {"image":"assets/images/bg/holi5.jpg","category":"Holi"},

    {"image":"assets/images/bg/diwali1.jpg","category":"Diwali"},
    {"image":"assets/images/bg/diwali2.jpg","category":"Diwali"},
    {"image":"assets/images/bg/diwali3.jpg","category":"Diwali"},
    {"image":"assets/images/bg/diwali4.jpg","category":"Diwali"},
    {"image":"assets/images/bg/diwali5.jpg","category":"Diwali"},

    {"image":"assets/images/bg/kite1.jpg","category":"Kite Festival"},
    {"image":"assets/images/bg/kite2.jpg","category":"Kite Festival"},
    {"image":"assets/images/bg/kite3.jpg","category":"Kite Festival"},
    {"image":"assets/images/bg/kite4.jpg","category":"Kite Festival"},
    {"image":"assets/images/bg/kite5.jpg","category":"Kite Festival"},

    {"image":"assets/images/bg/navratri1.jpg","category":"Navratri"},
    {"image":"assets/images/bg/navratri2.jpeg","category":"Navratri"},
    {"image":"assets/images/bg/navratri3.jpg","category":"Navratri"},
    {"image":"assets/images/bg/navratri4.jpg","category":"Navratri"},
    {"image":"assets/images/bg/navratri5.jpg","category":"Navratri"},

    {"image":"assets/images/bg/jan1.jpg","category":"Janmashtami"},
    {"image":"assets/images/bg/jan2.jpg","category":"Janmashtami"},
    {"image":"assets/images/bg/jan3.jpg","category":"Janmashtami"},
    {"image":"assets/images/bg/jan4.jpg","category":"Janmashtami"},

    {"image":"assets/images/bg/r1.jpg","category":"Raksha Bandhan"},
    {"image":"assets/images/bg/r2.jpg","category":"Raksha Bandhan"},
    {"image":"assets/images/bg/r3.jpg","category":"Raksha Bandhan"},
    {"image":"assets/images/bg/r4.jpg","category":"Raksha Bandhan"},

    {"image":"assets/images/bg/g1.jpg","category":"Ganesh Chaturthi"},
    {"image":"assets/images/bg/g2.jpg","category":"Ganesh Chaturthi"},
    {"image":"assets/images/bg/g3.jpg","category":"Ganesh Chaturthi"},
    {"image":"assets/images/bg/g4.jpg","category":"Ganesh Chaturthi"},

    {"image":"assets/images/bg/i1.jpg","category":"Independence Day"},
    {"image":"assets/images/bg/i2.jpg","category":"Independence Day"},
    {"image":"assets/images/bg/i3.jpg","category":"Independence Day"},
    {"image":"assets/images/bg/i4.jpg","category":"Independence Day"},

    {"image":"assets/images/bg/p1.jpg","category":"Republic Day"},
    {"image":"assets/images/bg/p2.jpg","category":"Republic Day"},
    {"image":"assets/images/bg/p3.jpg","category":"Republic Day"},
    {"image":"assets/images/bg/p4.jpg","category":"Republic Day"},
  ];

  TextEditingController titletxt =TextEditingController();

  List<Festivalmodal>modalList=[];

  String? catname;
}