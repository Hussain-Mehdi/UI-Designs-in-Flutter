import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                          color: Color.fromARGB(255, 252, 225, 240))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Color.fromARGB(255, 201, 169, 187),
                    ),
                  ),
                ),
                Text(
                  "Normal Skin",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                          color: Color.fromARGB(255, 202, 202, 202))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.shopping_cart,
                      color: Color.fromARGB(255, 201, 169, 187),
                    ),
                  ),
                )
              ],
            ),
          ),
          CircleAvatar(
            radius: 130,
            backgroundColor: Color.fromARGB(255, 252, 225, 240),
            backgroundImage: AssetImage("./images/woman.jpg"),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Jelly Grande",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 128, 128, 128)),
          ),
          Text(
            "Normal Skin",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 211, 160, 187),
            ),
          ),
          Expanded(
            child: ListView(
              children: createList(),
            ),
          )
        ],
      ),
    );
  }

  List<Widget> createList() {
    List<Widget> userProfileItems = [];
    List<String> items = [
      'Privacy & Setting',
      'Notification',
      'Skin type Quiz',
      'Order History',
      'Shipping Address',
    ];
    List<Icon> iconList = [
      Icon(
        Icons.home_outlined,
        color: Color.fromARGB(255, 196, 151, 176),
      ),
      Icon(
        Icons.notifications_outlined,
        color: Color.fromARGB(255, 196, 151, 176),
      ),
      Icon(
        Icons.scanner_outlined,
        color: Color.fromARGB(255, 196, 151, 176),
      ),
      Icon(
        Icons.lock_clock_outlined,
        color: Color.fromARGB(255, 196, 151, 176),
      ),
      Icon(
        Icons.location_city_outlined,
        color: Color.fromARGB(255, 196, 151, 176),
      ),
    ];

    int i = 0;
    while (i < 5) {
      userProfileItems.add(ListTile(
          leading: CircleAvatar(
            backgroundColor: Color.fromARGB(255, 252, 225, 240),
            child: iconList[i],
          ),
          title: Text(
            items[i],
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 12,
                color: Color.fromARGB(255, 95, 95, 95)),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios_rounded,
            size: 15,
          )));
      i++;
    }
    return userProfileItems;
  }
}
