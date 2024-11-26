import 'package:animation/widgets/custom_animation_leozinho.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Animations"),
          foregroundColor: Colors.white,
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: 60,
              itemBuilder: (context, index) {
                return CustomExpansionTileLeozinho(
                    text: "My expansion tile $index");
              },
            ))
          ],
        ));
  }
}
