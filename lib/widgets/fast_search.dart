import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstSearchDemo extends StatefulWidget {
  const FirstSearchDemo({super.key});

  @override
  State<FirstSearchDemo> createState() => _FirstSearchDemoState();
}

class _FirstSearchDemoState extends State<FirstSearchDemo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0,right: 8, top: 10,bottom: 40),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: NetworkImage("https://images.rawpixel.com/image_800/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvbHIvdjU0NmJhdGNoMy1teW50LTM0LWJhZGdld2F0ZXJjb2xvcl8xLmpwZw.jpg"),fit: BoxFit.cover
          ),

        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 30,top: 30,right: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Fast Search",style: TextStyle(fontSize: 25),),
              Text("You can quickly serch quickly\n for whatever you want",style: TextStyle(fontSize: 18),),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: TextField(

                  decoration: InputDecoration(
                    hintText: "Search",

                  fillColor: Colors.white,
                    prefixIcon: Icon(CupertinoIcons.search),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white
                      ),

                      borderRadius: BorderRadius.circular(15),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.white
                      ),

                      borderRadius: BorderRadius.circular(15),
                    ),
                    // border:  OutlineInputBorder(
                    //
                    //
                    //   borderRadius: BorderRadius.circular(15),
                    // ),
                    // enabledBorder: OutlineInputBorder(
                    //
                    //
                    //     borderRadius: BorderRadius.circular(15),
                    // ),
                    // focusedBorder: OutlineInputBorder(
                    //   gapPadding: 17,
                    //   borderRadius: BorderRadius.circular(15)
                    // )
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
