import 'package:flutter/material.dart';

class DailyPlan extends StatelessWidget {
  const DailyPlan({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xffd1edbf),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black12)),
                      child: Center(
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.close,
                                size: 20,
                                weight: 0.6,
                              )))),
                  Center(
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.more_horiz,
                            size: 25,
                            weight: 0.6,
                          ))),
                ]),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 48.0, left: 130),
            child: Container(
              height: 3,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 165, 165, 165)),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 10),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.elliptical(30, 30),
                      topRight: Radius.elliptical(30, 30)),
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 48.0, left: 30, right: 30, bottom: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Messaging ID",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "See All",
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20.0, top: 30, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Your daily plans",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "70%",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                      padding:
                          const EdgeInsets.only(left: 20.0, top: 10, right: 20),
                      child: Stack(
                        children: [
                          Container(
                            height: 5,
                            width: 300,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.grey),
                          ),
                          Container(
                            height: 5,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.black),
                          ),
                        ],
                      )),
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0, top: 15),
                    child: Text(
                      "4 of 6 completed",
                      style: TextStyle(color: Colors.black26),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 90,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: const Color(0xffffe7ab)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Text(
                                  "17",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Row(
                                  children: const [
                                    ImageIcon(
                                      AssetImage(
                                          "./images/managementapp/task.png"),
                                      size: 12,
                                    ),
                                    Text(
                                      "Task Finished",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromARGB(
                                              255, 116, 116, 116)),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 90,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: const Color(0xffffe7ab)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Text(
                                  "3,2",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Row(
                                  children: const [
                                    Icon(
                                      Icons.access_time_filled,
                                      size: 15,
                                    ),
                                    Text(
                                      "Tracked Time",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromARGB(
                                              255, 116, 116, 116)),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0, top: 30, right: 20),
                    child: Text(
                      "Overview",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 20, top: 10),
                    child: Text(
                      "A messaging app is a platform or a chat application enabling users to send and receive instant messages and connect. Think of the most popular messaging apps like Facebook Messenger, WhatsApp, Telegram, Viber. Which one do you use?",
                      style:
                          TextStyle(color: Color.fromARGB(255, 124, 124, 124)),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0, top: 30, right: 20),
                    child: Text(
                      "Members Connected",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: SizedBox(
                      height: 60,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: createProfileAvatars(),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  List<Widget> createProfileAvatars() {
    List<Widget> profiles = [];
    int i = 0;
    List<String> users = [
      './images/managementapp/pot1.jpg',
      './images/managementapp/pot2.jpg',
      './images/managementapp/pot3.jpg',
      './images/managementapp/pot4.jpg',
    ];

    while (i < 4) {
      Padding user = Padding(
        padding: const EdgeInsets.only(left: 5),
        child: CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage(users[i]),
        ),
      );

      profiles.add(user);

      i++;
    }
    profiles.add(const CircleAvatar(
      backgroundColor: Color(0xfff2eded),
      radius: 25,
      child: Text("+5"),
    ));
    return profiles;
  }

  List<Widget> createActiveProjecct() {
    List<Widget> projects = [];
    List<String> projectdetail = [
      'Blogs and social posts',
      'New Capmain Review',
      'Website for Hospital',
      'Map integration',
      'Rest API',
      'Microsoft',
      'Google',
      'IBM',
      'Oracle',
      'SAF',
      '5hr',
      '7hr',
      '6hr',
      '2hr',
      '3days'
          'Deadline is today',
      'Deadline is Monday',
      'Deadline is Wednesday',
      'Deadline is Friday',
      'Deadline is Sunday',
    ];
    int i = 0;
    while (i < 4) {
      Padding box = Padding(
        padding: const EdgeInsets.only(left: 12.0, right: 12, bottom: 8),
        child: Container(
          width: 250,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border:
                  Border.all(color: const Color.fromARGB(227, 192, 192, 192))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 18.0, right: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      projectdetail[5 + i],
                      style: const TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    Text(
                      projectdetail[10 + i],
                      style: const TextStyle(fontSize: 14, color: Colors.grey),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, top: 10),
                child: Text(
                  projectdetail[i],
                  style: const TextStyle(
                    color: Color(0xff3d3733),
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, top: 20, bottom: 15),
                child: Row(
                  children: [
                    const Icon(Icons.error_outline_outlined),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      projectdetail[15 + i],
                      style: const TextStyle(
                          fontSize: 12,
                          color: Color(0xff3d3733),
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      );
      projects.add(box);
      i++;
    }
    return projects;
  }
}
