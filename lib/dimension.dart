// import 'package:flutter/cupertino.dart';
 import 'package:flutter/material.dart';
import 'package:myapp/page-1/home_view.dart';

class Dimensions{
  static double screenHeight = MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.height;
  static double screenWidth = MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.width;






  static double height10 = screenHeight/84.343;
  static double height15 = screenHeight/56.23;
  static double height20 = screenHeight/42.17;
  static double height30 = screenHeight/28.11;
  static double height45 = screenHeight/18.74;


  static double width10 = screenWidth/41.143;
  static double width15 = screenWidth/27.43;
  static double width20 = screenWidth/20.57;
  static double width30 = screenWidth/13.71;
  static double width45 = screenWidth/9.14;

  static double font26 = screenHeight/32.44;
  static double font20 = screenHeight/42.17;
  static double font16 = screenHeight/52.71;
  static double font12 = screenHeight/70.29;

  static double radius15 = screenHeight/56.23;
  static double radius20 = screenHeight/42.17;
  static double radius30 = screenHeight/28.11;





}

class Responsive extends StatelessWidget {
  final Widget mobileView;
  final Widget desktopView;
  const Responsive({Key? key, required this.mobileView, required this.desktopView}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints){
      if(constraints.maxWidth< 500){
        return mobileView;
      }
      return desktopView;
    });
  }
}
