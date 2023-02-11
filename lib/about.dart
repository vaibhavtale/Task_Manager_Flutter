import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:task_manager/icon_container.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFfef9eb),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(18, 50, 18, 20),
            margin: EdgeInsets.only(bottom: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu,
                      size: 30,
                    ),
                    Icon(
                      Icons.search,
                      size: 30,
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      margin: EdgeInsets.only(left: 30, right: 30),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("img/img5.jpg"),
                              fit: BoxFit.cover)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Ashwarya Roy",
                            style: TextStyle(
                                fontSize: 25,
                                color: Color(0xFF0d253e),
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Backend Engineer",
                            style: TextStyle(fontSize: 18),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
            decoration: BoxDecoration(
              color: Color(0xFFf7be7c),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
            ),
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.only(left: 18, right: 18),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "My Skill",
                          style: TextStyle(
                              fontSize: 30,
                              color: Color(0xFF1a3048),
                              fontWeight: FontWeight.bold),
                        ),
                        IconContainer(
                            height: 80,
                            bgcolor: Colors.redAccent,
                            borderColor: Colors.grey,
                            width: 80,
                            size: 30,
                            index: 0)
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        IconContainer(
                            height: 80,
                            bgcolor: Colors.lightGreenAccent,
                            borderColor: Colors.white,
                            width: 80,
                            size: 30,
                            index: 1),
                        SizedBox(width: 15,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("My Schedule", style: TextStyle(fontSize: 25, ),),
                            Text("I have tasks to do. ", style: TextStyle(fontSize: 20, color: Colors.grey),)
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        IconContainer(
                            height: 80,
                            bgcolor: Colors.deepOrangeAccent,
                            borderColor: Colors.white,
                            width: 80,
                            size: 30,
                            index: 3),
                        SizedBox(width: 15,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Follow up", style: TextStyle(fontSize: 25, ),),
                            Text("We have tasks to do. ", style: TextStyle(fontSize: 20, color: Colors.grey),)
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        IconContainer(
                            height: 80,
                            bgcolor: Colors.blueAccent,
                            borderColor: Colors.white,
                            width: 80,
                            size: 30,
                            index: 4),
                        SizedBox(width: 15,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("My Location", style: TextStyle(fontSize: 25, ),),
                            Text("Meetings are allowed. ", style: TextStyle(fontSize: 20, color: Colors.grey),)
                          ],
                        )
                      ],
                    ),
                    
                    SizedBox(height: 20,),
                    
                    Row(
                      children: [
                        Text("Active Project's", style: TextStyle(fontSize: 30,))
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 170,
                          height: 250,

                          decoration: BoxDecoration(
                            color: Colors.tealAccent,
                            borderRadius: BorderRadius.all(Radius.circular(30))
                          ),
                          child: Column(
                            children: [
                              Padding(padding: EdgeInsets.fromLTRB(10, 50, 10, 0),
                              child: IconContainer(height: 80,  borderColor: Colors.lightGreenAccent, width: 80, size: 30, index: 2, bgcolor: Colors.tealAccent,)
                              ),
                              SizedBox(height: 20,),
                              Text("Medical App", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),),
                              Text("We cure from heart.", style: TextStyle(fontSize: 18,  color: Colors.white70),)

                            ],
                          ),
                        ),
                        Container(
                          width: 170,
                          height: 250,

                          decoration: BoxDecoration(
                              color: Colors.deepOrangeAccent,
                              borderRadius: BorderRadius.all(Radius.circular(30))
                          ),
                          child: Column(
                            children: [
                              Padding(padding: EdgeInsets.fromLTRB(10, 50, 10, 0),
                                  child: IconContainer(height: 80,  borderColor: Colors.lightBlueAccent, width: 80, size: 30, index: 5, bgcolor: Colors.transparent,)
                              ),
                              SizedBox(height: 20,),
                              Text("Flight Book", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),),
                              Text("We take it off.", style: TextStyle(fontSize: 18,  color: Colors.white70),)

                            ],
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 50,),

                  ],
                )),
          ))
        ],
      ),
    );
  }
}
