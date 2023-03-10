import 'package:flutter/material.dart';

class ManagementDashboard extends StatelessWidget {
  const ManagementDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: const ImageIcon(AssetImage("./images/managementapp/dd.png"),
                size: 23, color: Color(0xff0a3e7b))),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Home",
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0xff0a3e7b)),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                color: Color(0xff0a3e7b),
              ))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              "Hi, Jenifer!",
              style: TextStyle(
                  color: Color(0xff0a3e7b),
                  fontSize: 25,
                  fontWeight: FontWeight.w700),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              "Good Morning",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 146, 146, 146)),
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
                    fillColor: const Color(0xfff7f7f9),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none))),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: const Color(0xff0a3e7b))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Welcome",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w800,
                            color: Color(0xff0a3e7b)),
                      ),
                      Text(
                        "Let's schedule your project",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff0a3e7b)),
                      ),
                    ],
                  ),
                  Container(
                    width: 130,
                    height: 130,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              "./images/managementapp/management.png",
                            ),
                            fit: BoxFit.cover)),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Ongoing Project",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff0a3e7b)),
                ),
                Text(
                  "See all",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff0a3e7b)),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return createProject(index);
                  },
                )),
          )
        ],
      ),
    );
  }

  Widget createProject(int index) {
    List<String> projectdetail = [
      './images/managementapp/app.png',
      './images/managementapp/dd.png',
      './images/managementapp/announcement.png',
      './images/managementapp/ui.png',
      'Mobile App',
      'Dashboard',
      'Banner',
      'UI/UX',
      'May 12,2023',
      'March 24,2022',
      'Sept 12,2021',
      'Dec 12,2023',
      '0xff0d3571'
    ];

    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color:
                index == 0 ? const Color(0xff0a3e7b) : const Color(0xffebf1fd)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, left: 8.0, right: 8, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    projectdetail[8 + index],
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: index == 0
                            ? Colors.white
                            : const Color(0xff0a3e7b)),
                  ),
                  Icon(
                    Icons.more_vert_rounded,
                    color: index == 0 ? Colors.white : const Color(0xff0a3e7b),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, bottom: 15),
              child: Row(
                children: [
                  ImageIcon(
                    AssetImage(projectdetail[index]),
                    size: 30,
                    color: index == 0 ? Colors.white : const Color(0xff0a3e7b),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 6.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          projectdetail[index + 4],
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                              color: index == 0
                                  ? Colors.white
                                  : const Color(0xff0a3e7b)),
                        ),
                        Text(
                          "Project",
                          style: TextStyle(
                              fontSize: 8,
                              color: index == 0
                                  ? Colors.white
                                  : const Color(0xff0a3e7b)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10.0),
              child: Text(
                "Progress",
                style: TextStyle(
                    color: index == 0 ? Colors.white : const Color(0xff0a3e7b),
                    fontSize: 12),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 10.0),
              child: SizedBox(
                height: 10,
                width: 130,
                child: Stack(
                  children: [
                    Container(
                      height: 3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color.fromARGB(255, 199, 199, 199)),
                    ),
                    Container(
                      height: 3,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color(0xff0f3776)),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
