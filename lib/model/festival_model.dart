import 'dart:ui';

class Festivalmodal{
  String? image,name,category;
  Color? color;

  Festivalmodal({this.image,this.name,this.color,this.category});

  factory Festivalmodal.fromMap(Map m1){
    Festivalmodal f1= Festivalmodal(
        image: m1['image'],name:m1['name'],category: m1['category']);
    return f1;
  }
}