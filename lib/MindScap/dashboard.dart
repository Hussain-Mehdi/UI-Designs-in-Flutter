import 'package:flutter/material.dart';

class MindScapeDashboard extends StatelessWidget {
  const MindScapeDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("./images/mindscape/dashboard.png")),
        ),
      ),
    );
  }
}
