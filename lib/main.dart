import 'package:contest_food/config/utils/myRoutes.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Foody",
        initialRoute: RouteHelper.homePage,
        routes: RouteHelper.getRoute()
    );
  }

}