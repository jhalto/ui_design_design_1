import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_design_design_1/widgets/details.dart';
import 'package:ui_design_design_1/widgets/fast_search.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  final _tagList = <String>["All", "Popular","featured"];
  var selected = 0;
  textDesign(){
    return TextStyle(
      fontSize: 25,
      color: Colors.black,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
              Container(
                color:Colors.grey,
                child: Row(
                  children: [
                    Expanded(flex:2,child: Container(color: Colors.white,)),
                    Expanded(flex:1,child: Container(color: Colors.grey.shade300,))
                  ],
                ),
              ),
            Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0,top: 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Welome Home",style: textDesign(),),
                            Text("Annie Bryant",style: textDesign(),),

                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(CupertinoIcons.circle_filled,size: 15,color: Colors.red,),

                            Padding(
                              padding: const EdgeInsets.only(right:15.0,top: 40),
                              child: Container(
                                transform: Matrix4.rotationZ(100),
                                child: Icon(
                                  CupertinoIcons.bell,size: 40,color: Colors.black45,),
                              ),
                            ),

                             Padding(
                               padding: const EdgeInsets.only(right: 15.0,top: 60),
                               child: CircleAvatar(
                                  maxRadius: 22,
                                  child: Image.network("https://cdn.pixabay.com/photo/2020/07/01/12/58/icon-5359553_640.png",)),
                             ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                    flex: 2,
                    child: FirstSearchDemo(),
                ),
                Container(
                  height: 50,
                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                  child: ListView.builder(

                    scrollDirection: Axis.horizontal,
                      itemCount: _tagList.length,

                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(right: 100),
                        child: InkWell(
                          onTap: (){
                            setState(() {
                              selected=index;
                            });
                          },
                          child: Container(

                                              child: Center(child: Text(_tagList[index])),
                                              width: 60,
                                              decoration: BoxDecoration(
                                                color: selected==index?Colors.amber:Colors.white,

                            border: Border.all(

                                color: Colors.amberAccent
                            ),
                            borderRadius: BorderRadius.circular(13)
                                              ),
                                            ),
                        ),
                      ),)
                ),
                Expanded(
                    flex: 1,
                    child: DetailsDemo()),

              ],
            )
          ],
        ),
      ),
    );
  }
}
