import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class spoi extends StatefulWidget {
  const spoi({super.key});
  @override
  State<spoi> createState() => _spoiState();
}
class _spoiState extends State<spoi> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled)
          {
            return [SliverAppBar(
              leading:Icon(Icons.arrow_back,color: Colors.white,),
              pinned: true,
              expandedHeight: 450,
              stretch: true,
              titleSpacing: 10,
              backgroundColor: Colors.black87,
              flexibleSpace: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xffFF5E86),
                      Color(0xff121212),
                    ],
                   begin: Alignment.topCenter,
                   end:Alignment.bottomCenter,
                  )
                ),
                child: FlexibleSpaceBar(
                  centerTitle: false,
                  title: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Center(child: Text("A.R.rahuman...")),
                      ),
                    ],
                  ),
                  background: Stack(
                    children: [
                      Column(
                        children: [
                          SizedBox(height: 50,),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Container(
                                  height: 40,
                                  width: 280,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.search,color: Colors.white,),
                                      hintText: "Find in playlist",
                                      hintStyle: TextStyle(color: Colors.white),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide(color:Colors.white),
                                      ),

                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.white,
                                        )
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width:20),
                              Container(
                                width: 60,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                borderRadius: BorderRadius.circular(5),

                                ),
                                child: Center(
                                  child: Text("Sort",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87,
                                    fontSize: 20,),
                                      ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 150,
                            width: 150,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/rahuman.jpg"),
                              )
                            ),
                          ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text("A.R.Rahman Top 100",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,
                                      fontSize: 24),),
                                ],
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text("Rahuman changed the way of music",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("how indians listen to music",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                                    ],
                                  ),
                               SizedBox(height: 10,),
                               Row(
                                 children: [
                                   Container(
                                     width: 60,
                                     height: 60,
                                     decoration: BoxDecoration(
                                       image: DecorationImage(image: AssetImage("assets/rahuman.jpg")),
                                     ),

                                   ),
                                 ],
                               ),
                                ],
                              )
                            ],
                          ),
                        ),
                        ],
                      )
                    ],
                  ),
                ),
              ),

            ),
            ];
          },
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.add_circle_outline_rounded,size: 28,color:Colors.white,),
                      SizedBox(width:25 ,),
                      Icon(Icons.download_for_offline_outlined,size: 28,color:Colors.white,),
                      SizedBox(width:25 ,),
                      Icon(Icons.share,size: 28,color:Colors.white,),
                      SizedBox(width:25 ,),
                      Icon(Icons.more_vert_outlined,size: 28,color:Colors.white,),
                      SizedBox(width:25 ,),
                      Icon(Icons.shuffle,size: 28,color:Colors.green,),
                      SizedBox(width:25 ,),
                  Container(
                    width: 50,
                    height: 50,
                    child: CircleAvatar(
                      child: Icon(Icons.play_arrow,color: Colors.green,),
                    ),
                  ),
                    ],
                  ),
                  Container(
                    color: Colors.black,
                    child: ListView.builder(
                      itemCount: 18,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder:(context,index)=>Card(
                        color: Colors.black,
                        child: SingleChildScrollView(
                          child: ListTile(
                            leading:CircleAvatar(
                              backgroundImage: AssetImage("assets/rahuman.jpg")
                            ),
                            title: Text("anirudh",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),

                            ),
                          subtitle: Text("Rahuman's bliss",style:TextStyle(color: Colors.white,),),
                            trailing: Icon(Icons.more_vert_rounded),
                          ),
                        ),
                      ),

                    ),
                  ),
                ],
              ),
            ),

          ),
        )
    );

  }
}
