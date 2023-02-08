import 'package:flutter/material.dart';
import 'package:myapp/dimension.dart';

class WatchButton extends StatelessWidget {
  const WatchButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        color: const Color(0xff23956c),
        borderRadius: BorderRadius.circular(Dimensions.radius15*5-Dimensions.radius15/3)
      ),
        child: Padding(
          padding:  EdgeInsets.all(Dimensions.radius20/2),
          child: Row(
            children: [
              Image.asset('assets/page-1/images/frame-4.png', height: Dimensions.height20,),
               SizedBox(width: Dimensions.width10/2,),
               Text('Watch Video', style: TextStyle(color: Colors.white, fontSize: Dimensions.font12, fontWeight: FontWeight.bold),)
            ],
          ),
        ),
    );


  }
}
