import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:todo_flutter/ui/screens/chat_screen.dart';
import 'package:todo_flutter/ui/screens/classroom_screen.dart';
import 'package:todo_flutter/ui/screens/home_screen.dart';
import 'package:todo_flutter/ui/screens/task_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    TaskScreen(),
    ClassroomScreen(),
    ChatScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: ,
      bottomNavigationBar: ConvexAppBar(
        items: const [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.task_rounded, title: 'Task'),
          TabItem(icon: Icons.view_list, title: 'Classroom'),
          TabItem(icon: Icons.chat_rounded, title: 'Message'),
        ],
        onTap: (int i) {
          setState(() {
            _currentIndex = i;
          });
        },
        backgroundColor: const Color(0xff202020),
        activeColor: const Color(0xff49B583),
      ),

      backgroundColor: Colors.white,
      body: SafeArea(
        child: IndexedStack(
          index: _currentIndex,
          children: _pages,
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
