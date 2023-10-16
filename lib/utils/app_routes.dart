import 'package:festival_app/screens/festival_edit_screen.dart';
import 'package:festival_app/screens/home_screen.dart';
import 'package:festival_app/screens/splesh_screen.dart';
import 'package:flutter/cupertino.dart';

Map<String,WidgetBuilder> screenroutes ={

  '/':(context) => SpleshScreen(),
  'home':(context) => HomeScreen(),
  'edit':(context) => EditScreen(),

};