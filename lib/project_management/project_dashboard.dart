import 'package:flutter/material.dart';

class ProjectDashboard extends StatelessWidget {
  const ProjectDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xfffaf4f2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Row(
              children: const [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("./images/pot5.jpg"),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Hi,Kira",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 200),
                  child: Icon(Icons.notifications_active_outlined),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30.0, bottom: 5, left: 20),
            child: Text(
              "Task for Today",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 51, 51, 51)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Row(
              children: const [
                Icon(Icons.star_rounded, color: Color(0xfff8b916)),
                Padding(padding: EdgeInsets.only(left: 5), child: Text("5")),
                Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text(
                      "Available",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 85, 85, 85)),
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
            child: TextField(
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.search_outlined)),
                    hintText: "Search",
                    filled: true,
                    fillColor: const Color.fromARGB(255, 255, 255, 255),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none))),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 30, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Last Connection",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 15, top: 15),
            height: 50,
            child: ListView(
                scrollDirection: Axis.horizontal,
                children: createProfileAvatars()),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 30),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.elliptical(50, 50),
                      topRight: Radius.elliptical(50, 50)),
                  color: Colors.white),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 18.0, left: 30, right: 30, bottom: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Active Projects",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "See All",
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: ListView(children: createActiveProjecct()))
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
      './images/pot1.jpg',
      './images/pot2.jpg',
      './images/pot3.jpg',
      './images/pot4.jpg',
    ];

    while (i < 4) {
      CircleAvatar user = CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage(users[i]),
      );

      profiles.add(user);

      i++;
    }
    profiles.add(const CircleAvatar(
      backgroundColor: Color(0xfff2eded),
      radius: 30,
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
