import 'package:flutter/material.dart';
import 'package:task_manager/feed.dart';
import 'package:task_manager/people_model.dart';

class PersonDetailCard extends StatelessWidget {
  final Person person;

  PersonDetailCard({Key? key, required this.person}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 50.0,
      margin: EdgeInsets.fromLTRB(18, 10, 18, 10),
      shadowColor: Colors.grey.withOpacity(0.5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              width: 80,
              height: 80,
              padding: EdgeInsets.only(right: 20.0),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 5, color: Colors.white),
                  image: DecorationImage(
                      image: AssetImage(person.img), fit: BoxFit.cover),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 7, spreadRadius: 6, color: Colors.grey)
                  ]),
            ),
            SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.only(top: 8, bottom: 8)),
                Text(
                  person.name,
                  style: TextStyle(fontSize: 22),
                ),

                Text(
                  person.job,
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
                Padding(padding: EdgeInsets.only(top: 8, bottom: 8)),

                Row(
                  children: [
                    Icon(Icons.access_time_outlined, size: 18,),
                    SizedBox(width: 10,),
                    Text(person.clock, style: TextStyle(fontSize: 16, color: Colors.grey),)
                  ],
                )
              ],
            ),

            Expanded(
                child: Row(
                  children: [
                    Expanded(child: Container()),
                    Icon(Icons.more_vert, size: 30,)
                  ],
                ),
            ),
          ],
        ),
      ),
    );
  }
}
