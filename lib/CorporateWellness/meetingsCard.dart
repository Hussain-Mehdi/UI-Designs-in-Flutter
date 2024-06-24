import 'package:flutter/material.dart';

class MeetingCard extends StatelessWidget {
  MeetingCard(this.index, {super.key});

  final int index;

  final List<Color> myColorList = [
    const Color(0xffffe2e8),
    const Color(0xffe6e4f0),
    const Color(0xffecc1bb),
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: 120,
        width: 275,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: myColorList[index]),
        child: Padding(
          padding: const EdgeInsets.only(left: 18.0, right: 18, top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Meeting with front-End developer",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w800),
              ),
              const Text(
                "Project Name will be here",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const CircleAvatar(
                          // backgroundImage: AssetImage("./assets/profile.jpg"),
                          radius: 14,
                          backgroundColor: Colors.red,
                        ),
                        Transform.translate(
                          offset: const Offset(-12, 0),
                          child: const CircleAvatar(
                            // backgroundImage: AssetImage("./assets/profile.jpg"),
                            radius: 14,
                            backgroundColor: Colors.blue,
                          ),
                        ),
                        Transform.translate(
                          offset: const Offset(-22, 0),
                          child: const CircleAvatar(
                            // backgroundImage: AssetImage("./assets/profile.jpg"),
                            radius: 14,
                            backgroundColor: Colors.pink,
                          ),
                        ),
                        Transform.translate(
                          offset: const Offset(-36, 0),
                          child: const CircleAvatar(
                            // backgroundImage: AssetImage("./assets/profile.jpg"),
                            radius: 14,
                            backgroundColor: Colors.amber,
                          ),
                        ),
                        const Text(
                          "07:50 AM - 09:50 AM",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w800),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
