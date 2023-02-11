  import 'package:flutter/material.dart';
import 'package:task_manager/about.dart';

import 'feed.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: About(),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 50,
        alignment: Alignment.center,

        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.home_filled)),
              IconButton(onPressed: null, icon: Icon(Icons.subscriptions_rounded)),
              IconButton(onPressed: null, icon: Icon(Icons.settings)),
              IconButton(onPressed: null, icon: Icon(Icons.favorite)),
              IconButton(onPressed: ()=>About(), icon: Icon(Icons.person)),

            ],
          ),
        ),
      )
    );
  }
}
