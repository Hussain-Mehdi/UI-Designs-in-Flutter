import 'package:flutter/material.dart';

class ManagementProfile extends StatelessWidget {
  const ManagementProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              height: 350,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xff0d3571),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage:
                        AssetImage("./images/managementapp/pot2.jpg"),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Rachard A.Backman",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  const Text(
                    "Software Engineer",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: const [
                          Text(
                            "75K",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                                color: Colors.white),
                          ),
                          Text(
                            "Follower",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        children: const [
                          Text(
                            "16K",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                                color: Colors.white),
                          ),
                          Text(
                            "Follower",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        children: const [
                          Text(
                            "600K",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                                color: Colors.white),
                          ),
                          Text(
                            "Follower",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 5, left: 20.0, right: 20, bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Folders",
                  style: TextStyle(
                      color: Color(0xff0d3571),
                      fontSize: 14,
                      fontWeight: FontWeight.w800),
                ),
                Text(
                  "See all",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          SizedBox(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: createFolder(),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 5, bottom: 5, left: 20.0, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "My Team",
                  style: TextStyle(
                      color: Color(0xff0d3571),
                      fontSize: 14,
                      fontWeight: FontWeight.w800),
                ),
                Text(
                  "See all",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          Expanded(
              child: ListView(
            scrollDirection: Axis.vertical,
            children: createTeam(),
          )),
        ],
      ),
    );
  }

  List<Widget> createFolder() {
    List<Widget> folders = [];

    List<String> projectdetail = [
      './images/managementapp/folder.png',
      'Dribble share',
      'Draw.io',
      'Notion',
      'FlatIcons',
      'May 12,2023',
      'March 24,2022',
      'Sept 12,2021',
      'Dec 12,2023',
      '0xff0d3571'
    ];
    int i = 0;

    while (i < 4) {
      Padding folder = Padding(
          padding: const EdgeInsets.fromLTRB(18, 0, 18, 5),
          child: Container(
            width: 325,
            height: 20,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color(0xffebf1fd)),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 15, top: 5, left: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ImageIcon(
                    AssetImage(projectdetail[0]),
                    size: 50,
                    color: const Color(0xff0a3e7b),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, bottom: 10),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          projectdetail[1 + i],
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                              color: Color(0xff0a3e7b)),
                        ),
                        const Text(
                          "Project",
                          style:
                              TextStyle(fontSize: 8, color: Color(0xff0a3e7b)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15, left: 0.0),
                          child: SizedBox(
                            width: 60,
                            height: 20,
                            child: Stack(
                              children: const [
                                Positioned(
                                  left: 0,
                                  child: CircleAvatar(
                                    radius: 10,
                                    backgroundImage: AssetImage(
                                        "./images/managementapp/pot1.jpg"),
                                  ),
                                ),
                                Positioned(
                                  left: 35,
                                  child: CircleAvatar(
                                    radius: 10,
                                    backgroundImage: AssetImage(
                                        "./images/managementapp/pot1.jpg"),
                                  ),
                                ),
                                Positioned(
                                  right: 20,
                                  child: CircleAvatar(
                                    radius: 12,
                                    backgroundImage: AssetImage(
                                        "./images/managementapp/pot1.jpg"),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ));

      folders.add(folder);
      i++;
    }
    return folders;
  }

  List<Widget> createTeam() {
    List<Widget> folders = [];

    List<String> projectdetail = [
      './images/managementapp/shopping.png',
      './images/managementapp/ai.png',
      './images/managementapp/dish.png',
      'E-commerce  Application',
      'Artifical Intelligence',
      'Food',
      'Project on Process',
      "Complelte",
      'Started',
    ];
    int i = 0;

    while (i < 3) {
      Padding folder = Padding(
        padding: const EdgeInsets.fromLTRB(18, 0, 18, 5),
        child: Container(
            width: 300,
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color(0xffebf1fd)),
            child: Center(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 215, 223, 240),
                  radius: 30,
                  child: ImageIcon(AssetImage(projectdetail[i])),
                ),
                title: Text(
                  projectdetail[3 + i],
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      color: Color(0xff0a3e7b)),
                ),
                subtitle: Text(
                  projectdetail[6 + i],
                  style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 148, 148, 148)),
                ),
                trailing: Padding(
                  padding: const EdgeInsets.only(top: 0, left: 0.0),
                  child: SizedBox(
                    width: 60,
                    height: 20,
                    child: Stack(
                      children: const [
                        Positioned(
                          child: CircleAvatar(
                            radius: 10,
                            backgroundImage:
                                AssetImage("./images/managementapp/pot1.jpg"),
                          ),
                        ),
                        Positioned(
                          left: 15,
                          child: CircleAvatar(
                            radius: 10,
                            backgroundImage:
                                AssetImage("./images/managementapp/pot1.jpg"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )),
      );

      folders.add(folder);
      i++;
    }
    return folders;
  }
}
