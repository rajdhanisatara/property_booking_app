import 'package:flutter/material.dart';

class SelectCategory extends StatefulWidget {
  const SelectCategory({super.key});

  @override
  State<SelectCategory> createState() => _SelectCategoryState();
}

class _SelectCategoryState extends State<SelectCategory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          categoryButton(Icons.house_rounded, "House"),
          categoryButton(Icons.villa_rounded, "Villa"),
          categoryButton(Icons.apartment_rounded, "Appartment"),
          // categoryButton(Icons.castle_rounded, "castle"),
        ],
      ),
    );
  }
}

Widget categoryButton(IconData icon,String? text){
  return Container(
    margin: EdgeInsets.all(18.0),
    // padding: EdgeInsets.all(8.0),
    width: 80.0,
    height: 80.0,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey.shade100),
    ),
   child: InkWell(
    onTap: () {},
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 32,
          color: Color(0xFF2972FF),
        ),
      Text("$text"),
      ],
    ),
   ),
  );
}