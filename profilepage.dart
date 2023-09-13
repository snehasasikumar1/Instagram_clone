import 'package:flutter/material.dart';

class profilepage extends StatefulWidget {
  const profilepage({super.key});

  @override
  State<profilepage> createState() => _profilepageState();
}

class _profilepageState extends State<profilepage> {
  int a=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          child: Row(
            children: [
              Text('')
            ],
          ),
        )
        ]
      ),
    )
        ]
    )
    );
  }
}
