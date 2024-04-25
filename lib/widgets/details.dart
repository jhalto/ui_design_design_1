import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_design_design_1/models/details_model.dart';
import 'package:ui_design_design_1/widgets/show_details.dart';

class DetailsDemo extends StatefulWidget {
  const DetailsDemo({super.key});

  @override
  State<DetailsDemo> createState() => _DetailsDemoState();
}

class _DetailsDemoState extends State<DetailsDemo> {
  final modelInfo = DetailsModel.myList();
  @override
  Widget build(BuildContext context) {
    
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: modelInfo.length,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          showModalBottomSheet(context: context, builder: (context,  ) => ShowDetails(modelInfo[index]));
        },
        child: Padding(
          padding: EdgeInsets.only(right: 20,bottom: 120,top: 20),
          child: Container(
            width: 300,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            color: Colors.cyan
          ),


          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10.0,right: 10,top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                            backgroundImage: AssetImage("${modelInfo[index].logoUrl}"),

                        ),
                        SizedBox(width: 10,),
                        Text("${modelInfo[index].company}")
                      ],
                    ),
                    Icon(Icons.details)
                  ],
                ),
              ),
              Text("${modelInfo[index].title}"),
              Text("${modelInfo[index].location}")
            ],
          ),
              ),
        ),
      ),);
  }
}
