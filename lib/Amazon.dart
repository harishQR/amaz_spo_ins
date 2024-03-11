import 'package:amazon/productview.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
class  profpage extends StatefulWidget {
  const profpage ({super.key});
  @override
  State<profpage> createState() => profpage_State();
}

class profpage_State extends State<profpage> {
  int currentpage = 0;
  List items1=[
    "Prime",
    "Fresh",
    "Rewards",
    "Deals",
    "miniTv",
    "Prime",
    "Fresh",
    "Rewards",
    "Deals",
    "miniTv",

  ];
  List items2 = [
    "assets/prime.jpg",
    "assets/crown.jpg",
    "assets/deals.jpeg",
    "assets/fresh.jpg",
    "assets/Tv.jpg",
    "assets/prime.jpg",
    "assets/fresh.jpg",
    "assets/crown.jpg",
    "assets/deals.jpeg",
    "assets/Tv.jpg",

  ];
  List items3= [
        "Mega Offers...",
        "Mega Offers...",
        "Mega Offers...",
        "Mega Offers...",
        "Mega Offers...",
        "Mega Offers...",
        "Mega Offers...",
        "Mega Offers...",
        "Mega Offers...",
  ];
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Container(
            height: 50,
            width: 330,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                    colors: [Color(0xff85D9E3),Color(0xff9DE4D2)]
            )),
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search,color: Colors.black,),
                suffixIcon: Icon(Icons.mic,color: Colors.grey,),
                hintText: "Search Amazon.in",
                hintStyle:  TextStyle(color:Colors.grey),
                border: OutlineInputBorder(
                ),
                labelStyle: TextStyle(color:Colors.black),
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Icon(Icons.center_focus_strong),
            ),
          ],

        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                ),
                child:Row(
                  children: [
                    Icon(Icons.location_on,color: Colors.black,),
                    Text("Deliver to Harish- Tiruppur 641605",style: TextStyle(fontSize: 20),),
                    Icon(Icons.arrow_drop_down,size: 40,),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.white,
                child: ListView.builder(
                  itemCount: items1.length,
                    scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index){
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(image: DecorationImage(image: AssetImage(items2[index]),fit: BoxFit.fill)),
                            // child: Center(child: Text(a[index]))
                          ),
                        ),
                        Center(child: Text(items1[index])),
                      ],
                    );
                  }
                ),

              ),
              Stack(
                children: [
                  Container(
                    height: 340,
                    width: 400,
                    child: CarouselSlider.builder(
                      carouselController: CarouselController(),
                        options: CarouselOptions(
                          height: 400,
                          aspectRatio: 8/9,
                          viewportFraction: 1,
                          initialPage: 0,
                          enableInfiniteScroll: true,
                          reverse: false,
                          autoPlay: true,
                          autoPlayInterval: const Duration(seconds: 2),
                          autoPlayAnimationDuration: const Duration(milliseconds: 800),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enlargeCenterPage: true,
                          enlargeFactor: 0.3,
                          scrollDirection: Axis.horizontal,
                          onPageChanged: (index,reason){
                            setState(() {
                              currentpage = index;
                            });
                          }
                        ),
                        itemCount: items2.length,

                        itemBuilder: (BuildContext context, int index, int pageViewIndex)
                        {
                          return
                            Container(
                              height: 330,
                              width: 400,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage(items2[index]),fit: BoxFit.fill)),
                            );
                        }
                    ),
                  ),
                   Positioned(
                       bottom: 10,
                       left: 0,
                       right: 0,
                       child: DotsIndicator(
                         dotsCount: items2.length,
                       position:  currentpage.toInt(),
                         decorator: DotsDecorator(
                           color: Colors.cyanAccent,
                           activeColor: Colors.pink,
                         ),
                       ),
                   ),
                ],
              ),
              Container(
                height: 150,
                width: double.infinity,
                child: ListView.builder(
                    itemCount: items1.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index){
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              child: Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(image: DecorationImage(image: AssetImage(items2[index]),fit: BoxFit.fill)),
                                // child: Center(child: Text(a[index]))
                              ),
                            ),
                          ),
                        ],
                      );
                    }
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text("Deals of the day!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 400,
                width: 400,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  // scrollDirection: Axis.horizontal,
                    itemCount: items3.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ), itemBuilder: (BuildContext context, index){
                  return
                      Column(
                        children: [
                          GestureDetector(
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(items2[index]),
                                fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            onTap: (){
                              Navigator.push(context,MaterialPageRoute(builder: (context)=>productview()));
                            },
                          ),
                          Text(items3[index],style: TextStyle(fontSize: 15),)
                        ],
                      );
                }
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
