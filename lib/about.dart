import 'package:flutter/material.dart';

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
                    Icon(Icons.menu, size: 30,),
                    Icon(Icons.search, size: 30,)
                  ],
                ),
                SizedBox(height: 20,),
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
                          fit: BoxFit.cover
                        )
                      ),
                    ),

                    Padding(padding: EdgeInsets.only(right: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Ashwarya Roy", style: TextStyle(fontSize: 25, color: Color(0xFF0d253e)),),
                          Text("Backend Engineer", style: TextStyle(fontSize: 18),)
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
            decoration: BoxDecoration(
              color: Color(0xFFf7be7c),
              borderRadius: BorderRadius.circular(50.0),
            ),
          ),

          Expanded(child: SingleChildScrollView(
            child: Padding(padding: EdgeInsets.only(left: 18, right: 18),
              child: Column(
                children: [
                   Text("My Skill", style: TextStyle(fontSize: 30, color: Color(0xFF1a3048)),)
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
