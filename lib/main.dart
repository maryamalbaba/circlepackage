import 'package:circlc_for_serag/ListWheel.dart';
import 'package:circlc_for_serag/circle_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
 

 
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body: Center(
          child: homePage(),
        ),
      ),
    );
  }
}

class WheelExample extends StatefulWidget {
   WheelExample({super.key});

  @override
  State<WheelExample> createState() => _WheelExampleState();
}

class _WheelExampleState extends State<WheelExample> {
   List<String>numList=["1","10","20","30","40","50"];
  ScrollController scrollController=ScrollController() ;

// void initState(){
  Widget _buildItem(int i) {
   
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: Center(
          child: InkWell(
            onTap: () {
              print(i.toString());
            },
            // child: Text( List.generate(numList.length, (index)=>ClipRRect(
            //          borderRadius: BorderRadius.circular(40),
            //         child: Center(child: Text("${numList[index]}")))).toString())
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wheel example'),
      ),
      body: SafeArea(
        child: Center(
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.bottomCenter,
            children: [
              // Todo :
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.only(
                    topStart: Radius.circular(100000),
                    topEnd: Radius.circular(100000),
                  ),
                  color: Colors.brown,
                ),
                width: 350,
                height: 350,
                child: Center(
                  child: Container(
                    width: 389,
                    height: 389,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xFFFFF8C7)),
                    child: Center(
                      child: Container(
                        width: 264,
                        height: 264,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 216, 194, 169)),
                        child: Center(
                          child: Container(
                            width: 225,
                            height: 225,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/mandela.png"))),
                            // child: Center(
                            //   child: InkWell(
                            //     onTap: () {
                            //        scrollController.jumpTo(0);
                            //       //  setState(() {
                            //       //      print('Current index: $index');
                            //       //  });
                            //     },
                            //     child: Container(
                            //       width: 60,
                            //       height: 60,
                            //       decoration: BoxDecoration(
                            //           shape: BoxShape.circle,
                            //           color:  Color(0xFFFFF8C7)),
                            //     ),
                            //   ),
                            // ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                
                // height: 260,
                // width: 160,
                child: CircleListScrollView(
                  controller: scrollController,
                  // physics: const CircleFixedExtentScrollPhysics(),
                  axis: Axis.horizontal,
                  itemExtent: 80,
                  radius: MediaQuery.of(context).size.width * 0.4,
                  onSelectedItemChanged: (int index) {
                    // scrollController.animateTo(offset, duration: duration, curve: curve)
                 setState(() {
                      print('Current index: ${numList[index]}');
                    // scrollController.addListener(() {print(scrollController.offset);});
  
                 });
                  },
                  children: List.generate(numList.length, (index)=>InkWell(
                  onTap: () {
                    print(numList[index]);
                  },
                    child: InkWell(
                      onTap: () {
                        print("object");
                      },
                      child: Container(
                                         
                      //  color: Colors.red,
                        child: ClipRRect(
                           borderRadius: BorderRadius.circular(40),
                          child: Center(child: Text("${numList[index]}"))),
                      ),
                    ),
                  )),
                ),
              ),
              Positioned(
              bottom: 145,
                child: Center(
                              child: InkWell(
                                onTap: () {
                                   scrollController.jumpTo(0);
                                   setState(() {
                                      // print('Current index: $ind');
                                   });
                                },
                                child: Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color:  Color(0xFFFFF8C7)),
                                ),
                              ),
                            ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
