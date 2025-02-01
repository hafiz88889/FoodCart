import 'package:contest_food/ui/screen/description_screen/screen/details_page.dart';
import 'package:contest_food/ui/screen/home_screen/screen/home_page.dart';
import 'package:flutter/cupertino.dart';

class RouteHelper{
  static String homePage="/";
  static String detailsPage="/DetailsPage";

  static Map<String,WidgetBuilder>getRoute(){
    return {
      RouteHelper.homePage: (context) => const HomePage(),
      RouteHelper.detailsPage: (context) => const DetailsPage(),
    };
  }
}
