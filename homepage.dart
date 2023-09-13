import 'dart:html';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color iconColor = Colors.white;
  int a=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index){
            setState(() {
              a= index;
            });
          },
          currentIndex: a,
          items: [
            BottomNavigationBarItem(
              icon:Icon(Icons.home),
              label: 'home',
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'search',
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined),
              label: 'post',
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.video_collection_outlined),
              label: 'reels',
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
             icon: Container(
               height: 25,
               width: 25,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(25),
                 image: DecorationImage(fit: BoxFit.fill,
                     image: AssetImage('assets/dora.jpg')),
               ),
             ),
              label: 'account',
              backgroundColor: Colors.black
            ),
          ]
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: false,
            floating: true,
            flexibleSpace: Stack(
              children:[
                Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                color: Colors.black,
                child: Text( 'Instagram', style: TextStyle(fontSize:25, fontWeight:FontWeight.w600, color: Colors.white,fontStyle:FontStyle.italic ),),

              ),
                Positioned(
                  top: 10,
                    right: 70,
                    child: Icon(Icons.favorite_border, color: Colors.white,)
                ),
                Positioned(
                  top: 10,
                    right: 30,
                    child: Icon(Icons.messenger_outline,color: Colors.white,)
                )
              ]
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*2.5,
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            margin: EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              image: DecorationImage(fit: BoxFit.fill,
                                  image: AssetImage('assets/dora.jpg')),
                              borderRadius: BorderRadius.circular(70),
                              border: Border.all(
                                width: 3,
                                color: Colors.pink,
                              )
                            ),
                          ),
                          Text("My Story", style: TextStyle(
                            color: Colors.white
                          ),)
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            margin: EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              image: DecorationImage(fit: BoxFit.fill,
                                  image: AssetImage('assets/jerry.jpg')),
                              borderRadius: BorderRadius.circular(70),
                                border: Border.all(
                                  width: 3,
                                  color: Colors.pink,
                                )
                            ),
                          ),
                          Text("Jerry", style: TextStyle(
                              color: Colors.white
                          ),)
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            margin: EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              image: DecorationImage(fit: BoxFit.fill,
                                  image: AssetImage('assets/tomholl.jpg')),
                              borderRadius: BorderRadius.circular(70),
                                border: Border.all(
                                  width: 3,
                                  color: Colors.pink,
                                )
                            ),
                          ),
                          Text("Tom_Holland", style: TextStyle(
                              color: Colors.white
                          ),)
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            margin: EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              image: DecorationImage(fit: BoxFit.fill,
                                  image: AssetImage('assets/pinkpanther.jpg')),
                              borderRadius: BorderRadius.circular(70),
                                border: Border.all(
                                  width: 3,
                                  color: Colors.pink,
                                )
                            ),
                          ),
                          Text("PinkPanther", style: TextStyle(
                              color: Colors.white
                          ),)
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            margin: EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              image: DecorationImage(fit: BoxFit.fill,
                                  image: AssetImage('assets/tom.jpg')),
                              borderRadius: BorderRadius.circular(70),
                                border: Border.all(
                                  width: 3,
                                  color: Colors.pink,
                                )
                            ),
                          ),
                          Text("_Tom_", style: TextStyle(
                              color: Colors.white
                          ),)
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            margin: EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              image: DecorationImage(fit: BoxFit.fill,
                                  image: AssetImage('assets/jack.jpg')),
                              borderRadius: BorderRadius.circular(70),
                                border: Border.all(
                                  width: 3,
                                  color: Colors.pink,
                                )
                            ),
                          ),
                          Text("Leo", style: TextStyle(
                              color: Colors.white
                          ),)
                        ],
                      ),
                    ],
                  ),
                  Container(
                    width:MediaQuery.of(context).size.width,
                    height: 45,
                    decoration: BoxDecoration(
                        color: Colors.black,
                      border: Border.all(width: 0.1,color: Colors.white)
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        image: DecorationImage(fit: BoxFit.fill,
                            image: AssetImage('assets/tom.jpg')),
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(width: 2,color:Colors.pink
                        ),
                        ),
                        ),
                        Text('_Tom_', style: TextStyle(fontSize: 18, color: Colors.white)),
                        Container(
                            child: Icon(Icons.more_vert,color: Colors.white),
                          margin: EdgeInsets.only(left: 340),
                        ),
                      ],
                    ),
                    ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height:400,
                    decoration: BoxDecoration(
                      image: DecorationImage(fit: BoxFit.fill,
                      image: AssetImage('assets/tj1.jpg'))
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 15,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: IconButton(
                            icon: Icon(Icons.favorite,color: iconColor),
                            onPressed: () {
                              setState(() {
                                if(iconColor == Colors.white){
                                  iconColor = Colors.red;
                                } else{
                                  iconColor = Colors.white;
                                }
                              });
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.messenger_outline_outlined,size: 26,color: Colors.white),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.schedule_send_outlined,size: 26,color: Colors.white),
                        ),
                        Container(
                          child: Icon(Icons.bookmark,size: 26,color: Colors.white),
                          margin: EdgeInsets.only(left: 310,top: 5),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                    height: 25,
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                      child: Text('3,978 likes',style: TextStyle(fontSize:15,color: Colors.white ))),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Text('_Tom_  Heavenly days!',style: TextStyle(fontSize: 15,color: Colors.white))),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Text('View all 24 comments',style: TextStyle(fontSize: 13,color: Colors.grey))),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Text('4 hours ago',style: TextStyle(fontSize: 10,color: Colors.grey))),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  child: Column(
                    children: [
                      Text('Suggested for you                                                      See all',style: TextStyle(fontSize: 19,color: Colors.white)),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 150,
                            height: 240,
                            decoration: BoxDecoration(
                                color: Colors.black,
                              border: Border.all(width: 0.3,color: Colors.white)
                            ),
                            child: Column(
                              children: [
                                Container(
                                  width: 120,
                                  height: 120,
                                  margin: EdgeInsets.only(top: 15),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(fit: BoxFit.fill,
                                        image: AssetImage('assets/kate1.jpg')),
                                    borderRadius: BorderRadius.circular(120),
                                  ),
                                ),
                                Text('Kate_Winslet',style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold)),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          width: 20,
                                          height: 20,
                                          margin: EdgeInsets.only(right:6,left: 9),
                                          decoration: BoxDecoration(
                                            image: DecorationImage(fit: BoxFit.fill,
                                            image: AssetImage('assets/jack.jpg')),
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                        ),
                                        Text(' Followed by Leo',style: TextStyle(fontSize: 10,color: Colors.grey)),
                                      ],
                                    ),
                                    Container(
                                      width: 90,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: Align(
                                        alignment: Alignment.center,
                                          child: Text('Follow',style: TextStyle(fontSize: 16,color: Colors.white),)),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 150,
                            height: 240,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                border: Border.all(width: 0.3,color: Colors.white)
                            ),
                            child: Column(
                              children: [
                                Container(
                                  width: 120,
                                  height: 120,
                                  margin: EdgeInsets.only(top: 15),
                                  decoration: BoxDecoration(
                                    // image: DecorationImage(fit: BoxFit.fill,
                                    //     image: AssetImage('assets/will.jpg')),
                                    borderRadius: BorderRadius.circular(120),
                                  ),
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage('will.jpg'),
                                  ),
                                ),
                                Text('Will Smith',style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold)),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          width: 20,
                                          height: 20,
                                          margin: EdgeInsets.only(right:2,left:4),
                                          decoration: BoxDecoration(
                                            image: DecorationImage(fit: BoxFit.fill,
                                                image: AssetImage('assets/tomholl.jpg')),
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                        ),
                                        Text(' Followed by Tom_Holland',style: TextStyle(fontSize: 10,color: Colors.grey)),
                                      ],
                                    ),
                                    Container(
                                      width: 90,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: Align(
                                          alignment: Alignment.center,
                                          child: Text('Follow',style: TextStyle(fontSize: 16,color: Colors.white),)),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 150,
                            height: 240,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                border: Border.all(width: 0.3,color: Colors.white)
                            ),
                            child: Column(
                              children: [
                                Container(
                                  width: 120,
                                  height: 120,
                                  margin: EdgeInsets.only(top: 15),
                                  decoration: BoxDecoration(
                                    // image: DecorationImage(fit: BoxFit.fill,
                                    //     image: AssetImage('assets/will.jpg')),
                                    borderRadius: BorderRadius.circular(120),
                                  ),
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage('zendaya.jpg'),
                                  ),
                                ),
                                Text('Zendaya',style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold)),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          width: 20,
                                          height: 20,
                                          margin: EdgeInsets.only(right:2,left:4),
                                          decoration: BoxDecoration(
                                            image: DecorationImage(fit: BoxFit.fill,
                                                image: AssetImage('assets/jerry.jpg')),
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                        ),
                                        Text(' Followed by Jerry',style: TextStyle(fontSize: 10,color: Colors.grey)),
                                      ],
                                    ),
                                    Container(
                                      width: 90,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: Align(
                                          alignment: Alignment.center,
                                          child: Text('Follow',style: TextStyle(fontSize: 16,color: Colors.white),)),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                    ],
                  ),
                ),

                  Container(
                    width:MediaQuery.of(context).size.width,
                    height: 45,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(width: 0.1,color: Colors.white)
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            image: DecorationImage(fit: BoxFit.fill,
                                image: AssetImage('assets/tomholl.jpg')),
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(width: 2,color:Colors.pink
                            ),
                          ),
                        ),
                        Text('Tom_Holland', style: TextStyle(fontSize: 18, color: Colors.white)),
                        Container(
                          child: Icon(Icons.more_vert,color: Colors.white),
                          margin: EdgeInsets.only(left: 300),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 400,
                    decoration: BoxDecoration(
                        image: DecorationImage(fit: BoxFit.fill,
                            image: AssetImage('assets/tomholl.jpg'))
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 15,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.favorite_border_rounded,size:26, color: Colors.white),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.messenger_outline_outlined,size: 26,color: Colors.white),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.schedule_send_outlined,size: 26,color: Colors.white),
                        ),
                        Container(
                          child: Icon(Icons.bookmark,size: 26,color: Colors.white),
                          margin: EdgeInsets.only(left: 310,top: 5),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                    height: 25,
                  ),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Text('24,583 likes',style: TextStyle(fontSize:15,color: Colors.white ))),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Text('Tom_Holland   Good Morning All!',style: TextStyle(fontSize: 15,color: Colors.white))),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Text('View all 364 comments',style: TextStyle(fontSize: 13,color: Colors.grey))),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Text('6 hours ago',style: TextStyle(fontSize: 10,color: Colors.grey))),
                ],
              ),
            ),
          )
        ],
      ),
      );
  }
}
