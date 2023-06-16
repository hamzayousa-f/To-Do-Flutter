import 'package:flutter/material.dart';
import 'package:to_do/constraints/color.dart';

import '../widgets/searchbox.dart';
import '../widgets/todo_item.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: _buildAppBar(),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        child: Column(
          children: [
            SearchBox(),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 50,
                      bottom: 20,
                    ),
                    child: Text(
                      'All To Do\'s',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  ToDo(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: tdBGColor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.menu,
            color: tdBlack,
            size: 30,
          ),
          Container(
            height: 40,
            width: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('assets/images/hamza.jpg'),
            ),
          ),
        ],
      ),
      elevation: 0,
    );
  }
}
