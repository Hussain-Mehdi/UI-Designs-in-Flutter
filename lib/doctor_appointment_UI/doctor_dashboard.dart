import 'package:flutter/material.dart';

class DoctorDashboard extends StatelessWidget {
  const DoctorDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Container(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: createDoctors(),
            ),
          )
        ],
      ),
    );
  }

  List<Widget> createDoctors() {
    List<Color> colors = [
      Color(0xffe2e3fa),
      Color(0xffe6edfa),
      Color.fromARGB(255, 245, 226, 250),
      Color.fromARGB(255, 250, 237, 226),
      Color.fromARGB(255, 246, 250, 226),
      Color.fromARGB(255, 226, 250, 226),
      Color.fromARGB(255, 226, 242, 250),
      Color.fromARGB(255, 250, 226, 246),
    ];
    List<Widget> doctor = [];
    int i = 0;
    while (i < 5) {
      Padding doctorCard = Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 120,
          width: 190,
          decoration: BoxDecoration(
            color: colors[i],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Doctors.createDoctorList()[i].icon,
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    Doctors.createDoctorList()[i].name,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  Doctors.createDoctorList()[i].noOfDoctor,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Doctors.createDoctorList()[i].doctorAvatar,
                )
              ],
            ),
          ),
        ),
      );
      doctor.add(doctorCard);
      i++;
    }
    return doctor;
  }
}

class Doctors {
  String name;
  String noOfDoctor;
  Widget doctorAvatar;
  Widget icon;
  Doctors(this.name, this.noOfDoctor, this.doctorAvatar, this.icon);

  static List<Doctors> createDoctorList() {
    List<Doctors> doctorList = [];

    doctorList.add(Doctors(
        "Cardio",
        "12 doctors",
        Container(
          width: 200,
          child: Stack(
            children: [
              CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage("./images/pot1.jpg"),
              ),
              Positioned(
                left: 20,
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage("./images/pot2.jpg"),
                ),
              ),
              Positioned(
                left: 40,
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage("./images/pot3.jpg"),
                ),
              )
            ],
          ),
        ),
        CircleAvatar(
          radius: 25,
          child: Icon(Icons.heart_broken_outlined),
        )));
    doctorList.add(Doctors(
        "Cardio",
        "12 doctors",
        Container(
          width: 200,
          child: Stack(
            children: [
              CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage("./images/pot1.png"),
              ),
              Positioned(
                left: 20,
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage("./images/pot1.png"),
                ),
              ),
              Positioned(
                left: 40,
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage("./images/pot1.png"),
                ),
              )
            ],
          ),
        ),
        CircleAvatar(
          radius: 25,
          child: Icon(Icons.heart_broken_outlined),
        )));
    doctorList.add(Doctors(
        "Cardio",
        "12 doctors",
        Container(
          width: 200,
          child: Stack(
            children: [
              CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage("./images/pot1.png"),
              ),
              Positioned(
                left: 20,
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage("./images/pot1.png"),
                ),
              ),
              Positioned(
                left: 40,
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage("./images/pot1.png"),
                ),
              )
            ],
          ),
        ),
        CircleAvatar(
          radius: 25,
          child: Icon(Icons.heart_broken_outlined),
        )));
    doctorList.add(Doctors(
        "Cardio",
        "12 doctors",
        Container(
          width: 200,
          child: Stack(
            children: [
              CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage("./images/pot1.png"),
              ),
              Positioned(
                left: 20,
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage("./images/pot1.png"),
                ),
              ),
              Positioned(
                left: 40,
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage("./images/pot1.png"),
                ),
              )
            ],
          ),
        ),
        CircleAvatar(
          radius: 25,
          child: Icon(Icons.heart_broken_outlined),
        )));
    doctorList.add(Doctors(
        "Cardio",
        "12 doctors",
        Container(
          width: 200,
          child: Stack(
            children: [
              CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage("./images/pot1.png"),
              ),
              Positioned(
                left: 20,
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage("./images/pot1.png"),
                ),
              ),
              Positioned(
                left: 40,
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage("./images/pot1.png"),
                ),
              )
            ],
          ),
        ),
        CircleAvatar(
          radius: 25,
          child: Icon(Icons.heart_broken_outlined),
        )));
    doctorList.add(Doctors(
        "Cardio",
        "12 doctors",
        Container(
          width: 200,
          child: Stack(
            children: [
              CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage("./images/pot1.png"),
              ),
              Positioned(
                left: 20,
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage("./images/pot1.png"),
                ),
              ),
              Positioned(
                left: 40,
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage("./images/pot1.png"),
                ),
              )
            ],
          ),
        ),
        CircleAvatar(
          radius: 25,
          child: Icon(Icons.heart_broken_outlined),
        )));

    return doctorList;
  }
}
