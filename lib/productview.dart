import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class productview extends StatefulWidget {
  const productview({super.key});

  @override
  State<productview> createState() => productviewState();
}

class productviewState extends State<productview> {
  int currentpage = 0;
  List items2 = [
    "assets/fresh.jpg",
    "assets/crown.jpg"

  ];

  final List<String> items = ['1','2','3','4','5','6',];
  @override
  Widget build(BuildContext context) {
    String dropdownValue = items.first;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 20,
          toolbarHeight: 80,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                    colors: [Color(0xff85D9E3),Color(0xff9DE4D2)]
                )
            ),
          ),
          backgroundColor: Colors.blue,
          title: Container(
            height: 50,
            width: 330,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6)
            ),
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


        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Stack(
                children:[ Container(
                  width: double.infinity,
                  child: Stack(
                    children: [ CarouselSlider.builder(
                        options: CarouselOptions(
                          height: 417,
                          aspectRatio: 8 / 9,
                          viewportFraction: 1,
                          initialPage: 4,
                          enableInfiniteScroll: true,
                          reverse: false,
                          autoPlay: false,
                          autoPlayInterval: const Duration(seconds: 2),
                          autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
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
                        itemBuilder: (BuildContext context, int index,
                            int pageViewIndex) {
                          return Container(
                            height: 300,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(items2[index]),fit: BoxFit.cover
                              ),),
                          );
                        }),
                      Padding(
                        padding: const EdgeInsets.only(left: 360.0),
                        child: IconButton(onPressed: () {},
                          icon: Icon(Icons.share_outlined),
                          color: Colors.black38,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 380.0),
                        child: IconButton(onPressed: () {},
                            color: Colors.black38,
                            icon: Icon(Icons.favorite_border)),
                      ),

                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.cyan.shade50,
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
                      )
                  ),
        ]
        ),
              Center(child: Text('2k+bought in past month')),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Visit the tecno Store",style: TextStyle(fontWeight:FontWeight.bold,color: Colors.blue),),
                  ),Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RatingBar.builder(
                       initialRating: 3,
                       minRating: 1,
                       direction: Axis.horizontal,
                       allowHalfRating: true,
                       itemCount: 5,
                       itemSize: 25,
                       itemBuilder: (context, _)=> Icon(Icons.star,color: Colors.yellow,),
                    onRatingUpdate: (rated){
                         print(rated);
                    }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("351",style: TextStyle(color: Colors.blue),),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Tecno Spark Go 2024 (Mystery white,8GB RAM ,128GB ROM)Segment First 90Hz",style: TextStyle(color: Colors.black),),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 90,
                  height: 30,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                      onPressed: (){}, child: Text("Deal",style: TextStyle(color: Colors.white,fontSize: 20))),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("-14%", style:TextStyle(color: Colors.red,fontSize: 20)),
                      ),
                      Text("\u{20B9}", style:TextStyle(color: Colors.black,fontSize: 18)),
                      Text("7,299", style:TextStyle(color: Colors.black,fontSize: 30,fontWeight:FontWeight.bold )),


                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text("M.R.P.:", style:TextStyle(color: Colors.red,fontSize: 15)),
                        Text("\u{20B9}", style:TextStyle(color: Colors.grey,fontSize: 15,decoration: TextDecoration.lineThrough,)),
                        Text("7,299", style:TextStyle(color: Colors.black,fontSize: 15,fontWeight:FontWeight.bold,decoration: TextDecoration.lineThrough, )),


                      ],
                    ),
                  ),
                  Text("Inclusive of all taxes",style: TextStyle(color: Colors.black,fontSize: 18),),
                  Divider(),
                  ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                    text: TextSpan(
                  style: TextStyle(
                    fontSize: 14,
                  ),
                             children: [
                 TextSpan(text: 'Free Delivery',style: TextStyle(color: Colors.blue)),
                 TextSpan(text: ' sunday,18 february',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                 TextSpan(text: ' Details',style: TextStyle(color: Colors.blue)),
                
                             ]
                ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: TextSpan(
                      style: TextStyle(
                        fontSize: 14,
                      ),
                      children: [
                        TextSpan(text: 'or fastest delivery',style: TextStyle(color: Colors.blue)),
                        TextSpan(text: ' Tomorrow,15 february',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                        TextSpan(text: ' Order within',style: TextStyle(color: Colors.blue)),
                        TextSpan(text: ' 5 hrs 13 mins ',style: TextStyle(color: Colors.green)),
                        TextSpan(text: 'Details ',style: TextStyle(color: Colors.blue)),



                      ]
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("In Stock",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),
              ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                     height: 30,
                     width: 60,
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(20),
                       boxShadow: [
                         BoxShadow(
                           color: Colors.grey.withOpacity(0.5),
                           spreadRadius: 1,
                           blurRadius: 3,
                           offset: Offset(0,2),

                         )
                       ],
                     ),
                     child:   DropdownButton<String>(
                        value: dropdownValue,
                        elevation: 16,
                        underline: Container(
                        height: 2,
                        ),
                        onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                        dropdownValue = value!;
                        });
                        },
                        items: items.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                        value: value,
                        child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(value),
                            )),
                        );
                        }).toList()
    ),
                   ),
                 ),
              SizedBox(height: 10,),
              Center(
                child: Container(
                    height: 50,
                    width: 390,

                    child: ElevatedButton(onPressed: (){},
                        child: Text("Add to Cart",
                          style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow,
                      ),


                    ),
                ),
              ),
              SizedBox(height: 20,),
              Center(
                child: Container(
                  height: 50,
                  width: 390,

                  child: ElevatedButton(onPressed: (){},
                    child: Text("Buy Now",
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                    ),


                  ),
                ),
              ),


            ],
          ),
        ),

      ),

    );
  }
}
