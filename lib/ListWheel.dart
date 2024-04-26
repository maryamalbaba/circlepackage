import 'package:circlc_for_serag/mycontainer.dart';
import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  homePage({super.key});
  List<String> numList2 = ["1", "10", "20", "30", "40", "50"];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[ Container(
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
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Color(0xFFFFF8C7)),
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
                      child: Center(
                        // child: InkWell(
                        //   onTap: () {
                        //     //  setState(() {
                        //     //      print('Current index: $index');
                        //     //  });
                        //   },
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xFFFFF8C7)),
                        
                        ),
                        // ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )),

          ListWheelScrollView.useDelegate(
            offAxisFraction: 3.05,
                            diameterRatio: 1,
                            perspective: 0.01,
                            itemExtent: 50,
                            childDelegate: ListWheelChildBuilderDelegate(
                              childCount: numList2.length,
                              builder: (context, index) {
                                return InkWell(
                                  
                                  onTap: () {
                                    print(numList2[index]);
                                  },
                                  child: myContainer(numbers: numList2[index]));
                              },
                            )),
   ] );
  }
}
