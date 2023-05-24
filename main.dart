import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:sqfliteinternship/product/productpage.dart';
import 'package:sqfliteinternship/project19th/homepage.dart';
import 'package:sqfliteinternship/project19th/model_theme.dart';



import 'ScrnNew/splash.dart';
import 'alert/alert_task.dart';
import 'formtaskdemo/form2.dart';
import 'formtaskdemo/formdemo.dart';
import 'formtaskdemo/logdemp.dart';

void main()
{
  runApp(MyApp());
}

  class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        home: FD(),
      );
    }
  }