import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:instagram_ui/pages/util/bubble_stories.dart';

class UserHome extends StatelessWidget {
  final List people = [
    'friend1',
    'friend2',
    'friend3',
    'friend4',
    'friend5',
    'friend6'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Instagram',
                style: TextStyle(color: Colors.black),
              ),
              Row(
                children: [
                  Icon(Icons.add, color: Colors.black),
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Icon(Icons.favorite, color: Colors.black),
                  ),
                  Icon(Icons.share, color: Colors.black)
                ],
              )
            ],
          ),
        ),
        //Stories
        body: Column(
          children: [
            Container(
              height: 130,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return BubbleStories(text: people[index]);
                },
              ),
            )
            //Posts
          ],
        ));
  }
}
