// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';

class myContainer extends StatelessWidget {
  myContainer({
    Key? key,
    required this.numbers,
  }) : super(key: key);
List<String> numList2 = ["1", "10", "20", "30", "40", "50"];
  final String numbers;
  @override

  Widget build(BuildContext context) {
    return  Container(child:Center(child: Text("$numbers"),) ,);
  }
}
