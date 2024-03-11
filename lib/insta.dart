import'package:flutter/material.dart';
class insta_dup extends StatefulWidget {
  const insta_dup({super.key});

  @override
  State<insta_dup> createState() => insta_dupState();
}

class insta_dupState extends State<insta_dup> {
  List a=[
    'Highlight',
    'one',
    'two',
    'three',
    'four',
    'five',
    'Six',
    'seven',
    'Eight',
    'Nine',
    'Ten',
    'Eleven',
  ];
  List b =[
    "assets/crown.jpg",
    "assets/crown.jpg",
    "assets/crown.jpg",
    "assets/crown.jpg",
    "assets/crown.jpg",
    "assets/crown.jpg",
    "assets/crown.jpg",
    "assets/crown.jpg",
    "assets/crown.jpg",
    "assets/crown.jpg",
    "assets/crown.jpg",
    "assets/crown.jpg",
    "assets/crown.jpg",
    "assets/crown.jpg",
    "assets/crown.jpg",
    "assets/crown.jpg",
    "assets/crown.jpg",
    "assets/crown.jpg",
    "assets/crown.jpg",
    "assets/crown.jpg",
    "assets/crown.jpg",


  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.arrow_back),
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("am_harish_007"),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.add),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.menu),
              ),
            ],
          ),
          body: NestedScrollView(headerSliverBuilder: (BuildContext context,bool innerBoxIsScrolled){
            return[
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage("assets/crown.jpg"),
                            radius: 40,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Text("10"),
                                Text("Post"),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text("604"),
                                Text("followers"),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text("300"),
                                Text("Followers"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Text("am_Harish"),
                          Text("mobile app developer"),
                          Text("ready to explore knowledge"),
                          Text("free lancing available"),
                          Text("DM for collabration"),
                          Text("byeee!"),
                        ],
                      ),
                    ),
                    Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black.withOpacity(0.1)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Professional Dashboard"),
                            Text("1000 reached in the last 30 days",style: TextStyle(color: Colors.grey),)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(left:8.0,right: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Container(
                              width: 150,
                              height: 35,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(10),

                              ),
                              child: Center(child: Text("Edit profile")),

                            ),
                          ),
                          SizedBox(width: 10,),
                          Expanded(
                            child: Container(
                              width: 150,
                              height: 35,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(child: Text("Share profile")),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 90,
                      child: ListView.builder(
                        itemCount: 9,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context,int index){
                          return Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  backgroundImage: AssetImage('assets/crown.jpg'),
                                  radius: 25,
                                ),
                              ),
                              Center(child: Text(a[index])),
                            ],
                          );
                        },
                      ),
                    ),

                  ],
                ),
              ),
            ];
          } ,
            body:Column(
              children: [
                TabBar(tabs: [
                  Tab(
                    icon: Icon(Icons.grid_on_sharp),
                  ),
                  Tab(
                    icon: Icon(Icons.people_alt_outlined),
                  ),
                  Tab(
                    icon: Icon(Icons.account_box_outlined),
                  ),
                ]),
                Expanded(child:TabBarView(children: [
                  GridView.builder(
                    gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 2,
                      mainAxisSpacing: 2,
                    ),
                    itemCount: 21,
                    itemBuilder: (BuildContext context,int index){
                      return Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color  : Colors.black.withOpacity((0.2)),
                          image: DecorationImage(
                            image: AssetImage(b[index]),
                          ),
                        ),
                      );
                    },
                  ),
                  GridView.builder(
                    gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 2,
                      mainAxisSpacing: 2,
                    ),
                    itemCount: 21,
                    itemBuilder: (BuildContext context,int index){
                      return Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color  : Colors.black.withOpacity((0.2)),
                          image: DecorationImage(
                            image: AssetImage(b[index]),
                          ),
                        ),

                      );
                    },
                  ),
                  GridView.builder(
                    gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 2,
                      mainAxisSpacing: 2,
                    ),
                    itemCount: 21,
                    itemBuilder: (BuildContext context,int index){
                      return Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color  : Colors.black.withOpacity((0.2)),
                          image: DecorationImage(
                            image: AssetImage(b[index]),
                          ),
                        ),

                      );
                    },
                  ),

                ],))
              ],
            ),
          ),

        ),
      ),
    );
  }
}
