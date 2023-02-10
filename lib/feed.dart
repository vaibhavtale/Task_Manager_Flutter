import 'package:flutter/material.dart';
import 'package:task_manager/people_model.dart';
import 'package:task_manager/person_detail.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {

  List<Person> persons = [
    Person(name: "John cook", img: "img/img1.jpg", clock: "12:45", job: "Flutter Developer"),
    Person(name: "Andy Smith", img: "img/img5.jpg", clock: "03:49", job: "Pharmacist"),
    Person(name: "Penny Fleck", img: "img/img3.jpg", clock: "01:30", job: "Software devs"),
    Person(name: "Mosh Meth", img: "img/img4.jpg", clock: "01:30", job: "Web developer"),
    Person(name: "Arthur Fleck", img: "img/img6.jpg", clock: "01:30", job: "Entreprenuar"),
    Person(name: "Andy Smith", img: "img/img5.jpg", clock: "01:30", job: "Philanthropist"),

  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(18, 50, 18, 18),
          color: Color(0xFFf7be7c),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Creators", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
              SizedBox(width: 10,),
              Icon(Icons.format_align_center_outlined, size: 26,)
            ],
          ),
        ),

        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: persons.map((p) {
                return PersonDetailCard(person: p);
              }).toList(),
            ),
          ),
        )
      ],
    );
  }
}
