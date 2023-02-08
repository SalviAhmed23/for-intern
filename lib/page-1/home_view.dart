import 'package:flutter/material.dart';
import 'package:myapp/dimension.dart';
import 'package:myapp/widgets/reminder_task.dart';

import '../widgets/all_task.dart';
import '../widgets/watch_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
            items: [
          BottomNavigationBarItem(label: 'Home',icon: Image.asset('assets/page-1/images/home.png',height: Dimensions.height30,)),
          BottomNavigationBarItem(label: 'Search',icon: Image.asset('assets/page-1/images/search.png',height: Dimensions.height30,)),
          BottomNavigationBarItem(label: 'Record',icon: Image.asset('assets/page-1/images/video.png',height: Dimensions.height30,)),
          BottomNavigationBarItem(label: 'Saved',icon: Image.asset('assets/page-1/images/save.png',height: Dimensions.height30,)),
          BottomNavigationBarItem(label: 'Settings',icon: Image.asset('assets/page-1/images/settings.png',height: Dimensions.height30,)),
        ]),
        body: Column(
          children: [
            Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.bottomLeft,
                children: [
                  Container(
                    height: Dimensions.height20*23,
                    decoration:  BoxDecoration(
                        color: const Color(0xff042d2b),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(Dimensions.radius20),
                            bottomRight: Radius.circular(Dimensions.radius20))),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:  EdgeInsets.all(Dimensions.height20),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/page-1/images/auto-group-ori6.png',
                                    height: Dimensions.height20,
                                  ),
                                  SizedBox(
                                    width: Dimensions.width10 / 2,
                                  ),
                                  const Text('9:30',
                                      style: TextStyle(color: Colors.white))
                                ],
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.all(Dimensions.height20),
                              child: Image.asset(
                                'assets/page-1/images/right-icons.png',
                                height: Dimensions.height15,
                              ),
                            )
                          ],
                        ),
                         SizedBox(
                          height: Dimensions.height10/2,
                        ),
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: Dimensions.width20, vertical: Dimensions.height10/2),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:  [
                                  Text('Hi, Habib 👋',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: Dimensions.font20)),
                                  const Text('Let’s explore your notes',
                                      style: TextStyle(color: Colors.white))
                                ],
                              ),
                              SizedBox(
                                // height: 40,
                                width: Dimensions.width20*2,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(Dimensions.radius30),
                                    child: Image.asset(
                                      'assets/page-1/images/profile.png',
                                      height: Dimensions.height20*2,
                                      fit: BoxFit.cover,
                                    )),
                              )
                            ],
                          ),
                        ),
                         SizedBox(
                          height: Dimensions.height10/2,
                        ),
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: Dimensions.width20, vertical: Dimensions.height20),
                          child: Container(
                            decoration: BoxDecoration(
                                color: const Color(0x19ffffff),
                                borderRadius: BorderRadius.circular(Dimensions.radius20)),
                            child: Padding(
                              padding:  EdgeInsets.symmetric(horizontal: Dimensions.height20, vertical: Dimensions.height20/2),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                   Text(
                                    'Welcome to TickTick Task',
                                    style: TextStyle(
                                        fontSize: Dimensions.font12*3/2,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                   SizedBox(
                                    height: Dimensions.height15/2,
                                  ),
                                   Text(
                                    'Your one-stop app for task management. Simplify, track, and accomplish tasks with ease',
                                    style: TextStyle(
                                        fontSize: Dimensions.font26/2, color: Colors.white),
                                  ),
                                   SizedBox(
                                    height: Dimensions.height10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const WatchButton(),
                                      Image.asset(
                                        'assets/page-1/images/icon-for-banner.png',
                                        height: Dimensions.height15*5,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: Dimensions.height20, vertical: Dimensions.height20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:  [
                              Text(
                                'Reminder Task',
                                style: TextStyle(
                                    fontSize: Dimensions.font12*3/2,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text(
                                'See All',
                                style:
                                    TextStyle(fontSize: Dimensions.font26/2, color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: -Dimensions.height20*3 + Dimensions.height10,

                    left: Dimensions.height20,
                    right: 0,
                    //height: 120,
                    child: SizedBox(
                      height: Dimensions.height20*6,
                      width: double.infinity,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return const ReminderTask();
                          }),
                    ),
                  ),
                ]),

             SizedBox(
              height: Dimensions.height20*4,
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: Dimensions.width20, vertical: Dimensions.height10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  Text(
                    'All Task',
                    style: TextStyle(
                        fontSize: Dimensions.font12*3/2,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff042d2b)),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(fontSize: Dimensions.font26/2, color: Colors.grey),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 5,
                  itemBuilder: (context, index) {
                return  Padding(
                  padding: EdgeInsets.symmetric(horizontal: Dimensions.width20),
                  child: const AllTask(),
                );
              }),
            )
            //SizedBox(height: 80,),
          ],
        ),
      ),
    );
  }
}
