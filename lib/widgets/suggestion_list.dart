import 'package:flutter/material.dart';
import 'package:property_booking_app/screens/details_screen.dart';
import 'package:property_booking_app/widgets/house_card.dart';

import '../models/item_model.dart';

// ignore: must_be_immutable
class SuggestionList extends StatefulWidget {
  SuggestionList(this.title,this.items,{Key ? key}):super(key:key);
  String? title;
  List<Item> items;
  
  @override
  State<SuggestionList> createState() => _SuggestionListState();
}

class _SuggestionListState extends State<SuggestionList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.title!,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
              ),
              TextButton(onPressed: () {}, child: Text("See all"),
              ),
            ],
          ),
        SizedBox(
          height: 12.0,
        ),
        Container(
          height: 340.0,
          width: double.infinity,
          child: ListView.builder(scrollDirection:Axis.horizontal,itemCount: widget.items.length,itemBuilder: (context,index)=>ItemCard(widget.items[index], () {
            Navigator.push(context,MaterialPageRoute(builder: (context)=>DetailsScreen(widget.items[index]),
            ),
            );
          },
          ),
          ),
        )
        ],
      ),
    );
  }
}