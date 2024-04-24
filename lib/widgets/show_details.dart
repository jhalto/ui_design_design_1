import 'package:flutter/material.dart';
import 'package:ui_design_design_1/models/details_model.dart';

class ShowDetails extends StatefulWidget {


  @override
  State<ShowDetails> createState() => _ShowDetailsState();
}

class _ShowDetailsState extends State<ShowDetails> {
 final modelInfo = DetailsModel.myList();

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Column(
         children: [
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 170),
             child: Divider(thickness: 5,
             color: Colors.black12,
             ),
           ),

         ],
       ),
    );
  }
}
