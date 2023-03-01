import 'package:flutter/material.dart';

class DoctorDetail extends StatelessWidget {
  const DoctorDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Color.fromARGB(66, 150, 150, 150),
                  child: IconButton(
                      color: Colors.black,
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back_ios,
                        size: 20,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 68.0),
                  child: Text(
                    "Doctor Detail",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 28),
            child: Container(
              height: 160,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 242, 241, 247)),
              child: Row(
                children: [
                  Container(
                    width: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('./images/doctor2.png'),
                            fit: BoxFit.cover)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0, left: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dr.Bingamin",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22),
                        ),
                        Text(
                          "Mayo Clinic",
                          style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        Text(
                          "Cardiologists",
                          style: TextStyle(fontSize: 12),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 2.0, top: 25),
                          child: Row(
                            children: [
                              Icon(Icons.access_time_filled,
                                  size: 20,
                                  color: Color.fromARGB(255, 104, 85, 202)),
                              Text(
                                "04:30PM-07:00PM",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 18.0, right: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "About",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Reviews",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Star",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 18, right: 18),
            child: Text(
                "Robert Mcbane is a Cardiologist in Rochester, Minnesota. Mcbane has been practicing medicine for over 35 years and is highly rated in 8 conditions, according to our data. His top areas of expertise are Venous Thromboembolism (VTE), Thoracic Aortic Aneurysm, Varicose Veins, and Arterial Insufficiency. Mcbane is currently accepting new patients."),
          ),
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("./images/"))),
          )
        ],
      ),
    );
  }
}
