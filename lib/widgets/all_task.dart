import 'package:flutter/material.dart';
import 'package:myapp/dimension.dart';
import 'package:myapp/utils.dart';
class AllTask extends StatelessWidget {
  const AllTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Padding(
          padding:  EdgeInsets.all(
              Dimensions.height10
          ),
          child: Container(
            // frame8Fsh (1:528)
            padding: EdgeInsets.all(Dimensions.height10),
            width: double.infinity,
            height: Dimensions.height20*4,
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              // color: Colors.red,
              borderRadius: BorderRadius.circular(Dimensions.radius15 / 2),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/page-1/images/to-do-list-1-1-vd1.png',
                  width: Dimensions.width20*2,
                  height: Dimensions.height20*2,
                ),
                 SizedBox(width: Dimensions.width20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Online Class Routine',
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: Dimensions.font16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff042d2b),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // savedate3yu (1:542)

                          child: Text(
                            'Save Date:',
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: Dimensions.font20 / 1.5,
                              fontWeight: FontWeight.w400,
                              height: Dimensions.height10 / 5,
                              color: const Color(0x7f042d2b),
                            ),
                          ),
                        ),
                        Text(
                          // rRZ (1:543)
                          '10/12/2022',

                          style: SafeGoogleFont(
                            'Inter',
                            fontSize: Dimensions.font20 / 1.5,
                            fontWeight: FontWeight.w400,
                            height: Dimensions.height10 / 5,
                            color: const Color(0x7f042d2b),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
