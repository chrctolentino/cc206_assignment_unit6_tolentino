import 'package:flutter/material.dart';
import 'package:unit6_assignment_tolentino/components/tab_widget1.dart';
import 'package:unit6_assignment_tolentino/components/tab_widget2.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("About Me"),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.info), text: "Tab 1"),
              Tab(icon: Icon(Icons.person), text: "Tab 2"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            TabWidget1(), 
            TabWidget2(), 
          ],
        ),
      ),
    );
  }
}
