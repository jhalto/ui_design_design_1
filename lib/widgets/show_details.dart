import 'package:flutter/material.dart';
import 'package:ui_design_design_1/models/details_model.dart';

class ShowDetails extends StatefulWidget {
 DetailsModel _detailsModel;
 ShowDetails(this._detailsModel);

  @override
  State<ShowDetails> createState() => _ShowDetailsState();
}

class _ShowDetailsState extends State<ShowDetails> {

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Padding(
         padding: const EdgeInsets.only(left: 10.0,right: 10,top: 10),
         child: SingleChildScrollView(

           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 170),
                 child: Divider(thickness: 5,
                 color: Colors.black12,
                 ),
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Row(
                     children: [
                       CircleAvatar(
                         backgroundImage: AssetImage(widget._detailsModel.logoUrl),

                       ),
                       SizedBox(width: 10,),
                       Text(widget._detailsModel.company,style: TextStyle(fontSize: 18),)
                     ],
                   ),
                   Icon(Icons.details)
                 ],
               ),
               Text(widget._detailsModel.title,style: TextStyle(fontSize: 25),),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Text(widget._detailsModel.location),
                   Text(widget._detailsModel.fullTime),
                 ],
               ),
               SizedBox(height: 15),
               Text("Requirement", style: TextStyle(fontSize: 20),),
               SingleChildScrollView(

                scrollDirection: Axis.vertical,
                physics:AlwaysScrollableScrollPhysics(),

                 child: Column(
                   children: List.generate(
                       widget._detailsModel.req.length, (index) => Row(
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(bottom: 15),
                         child: Text("*"),
                       ),
                       SizedBox(width: 10,),
                       Text(widget._detailsModel.req[index]),
                     ],
                   ))
                 ),
               )


             ],
           ),
         ),
       ),
    );
  }
}
