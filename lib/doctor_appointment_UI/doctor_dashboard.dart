import 'package:flutter/material.dart';
import 'package:simple_food_ui/doctor_appointment_UI/doctor_detail.dart';

class DoctorDashboard extends StatelessWidget {
  const DoctorDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CircleAvatar(
                  radius: 35,
                  backgroundImage:
                      AssetImage("./images/doctorappimages/pot1.jpg"),
                ),
                CircleAvatar(
                  radius: 26,
                  backgroundColor: Color.fromARGB(255, 231, 231, 231),
                  child: Icon(
                    Icons.notifications_outlined,
                    color: Colors.black54,
                    size: 25,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 18.0, left: 18, right: 18),
            child: Text(
              "Let's find\nyour suitable doctor",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 5.0,
              right: 5,
            ),
            child: SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: createDoctors(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18, right: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Top Doctors",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                      color: Colors.grey),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: SizedBox(
              height: 279,
              child: ListView(
                children: createTopDoctor(context),
              ),
            ),
          )
        ],
      ),
    );
  }

  List<Widget> createDoctors() {
    List<Color> colors = [
      const Color(0xffe2e3fa),
      const Color(0xffe6edfa),
      const Color.fromARGB(255, 245, 226, 250),
      const Color.fromARGB(255, 250, 237, 226),
      const Color.fromARGB(255, 246, 250, 226),
      const Color.fromARGB(255, 226, 250, 226),
      const Color.fromARGB(255, 226, 242, 250),
      const Color.fromARGB(255, 250, 226, 246),
    ];
    List<Widget> doctor = [];
    int i = 0;
    while (i < 5) {
      Padding doctorCard = Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 120,
          width: 170,
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
                    style: const TextStyle(
                        fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  Doctors.createDoctorList()[i].noOfDoctor,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.bold),
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

  List<Widget> createTopDoctor(BuildContext context) {
    List<Widget> topdoctors = [];
    List<String> doctorImg = [
      './images/doctorappimages/doctor2.png',
      './images/doctorappimages/doctor1.png',
      './images/doctorappimages/doctor.png',
      'Dr.Benjamin',
      'Dr.Amelia',
      'Dr.Lucas',
      'Mayo Clinic',
      "Bellevue Hospital",
      'ACMH Hospital',
      'Cardiologists',
      'Ophthalmologists',
      'Endocrinologists',
    ];

    int i = 0;
    while (i < 3) {
      Padding topdoctor = Padding(
        padding: const EdgeInsets.all(8),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DoctorDetail(),
                ));
          },
          child: Container(
            height: 140,
            width: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 242, 241, 247)),
            child: Row(
              children: [
                Container(
                  width: 150,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(doctorImg[i]), fit: BoxFit.cover)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0, left: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        doctorImg[3 + i],
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22),
                      ),
                      Text(
                        doctorImg[i + 6],
                        style: const TextStyle(
                            overflow: TextOverflow.ellipsis,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      Text(
                        doctorImg[i + 9],
                        style: const TextStyle(fontSize: 12),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 2.0, top: 25),
                        child: Row(
                          children: const [
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
                )
              ],
            ),
          ),
        ),
      );

      topdoctors.add(topdoctor);
      i++;
    }
    return topdoctors;
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
        SizedBox(
          width: 200,
          child: Stack(
            children: const [
              CircleAvatar(
                radius: 15,
                backgroundImage:
                    AssetImage("./images/doctorappimages/doctor.png"),
              ),
              Positioned(
                left: 20,
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage:
                      AssetImage("./images/doctorappimages/doctor1.png"),
                ),
              ),
              Positioned(
                left: 40,
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage:
                      AssetImage("./images/doctorappimages/doctor2.png"),
                ),
              )
            ],
          ),
        ),
        const CircleAvatar(
          radius: 25,
          child: Icon(Icons.heart_broken_outlined),
        )));
    doctorList.add(Doctors(
        "Dentist",
        "12 doctors",
        SizedBox(
          width: 200,
          child: Stack(
            children: const [
              CircleAvatar(
                radius: 15,
                backgroundImage:
                    AssetImage("./images/doctorappimages/doctor.png"),
              ),
              Positioned(
                left: 20,
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage:
                      AssetImage("./images/doctorappimages/doctor1.png"),
                ),
              ),
              Positioned(
                left: 40,
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage:
                      AssetImage("./images/doctorappimages/doctor2.png"),
                ),
              )
            ],
          ),
        ),
        const CircleAvatar(
          radius: 25,
          child: ImageIcon(AssetImage("./images/doctorappimages/tooth.png")),
        )));
    doctorList.add(Doctors(
        "Neurosurgery",
        "12 doctors",
        SizedBox(
          width: 200,
          child: Stack(
            children: const [
              CircleAvatar(
                radius: 15,
                backgroundImage:
                    AssetImage("./images/doctorappimages/doctor.png"),
              ),
              Positioned(
                left: 20,
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage:
                      AssetImage("./images/doctorappimages/doctor1.png"),
                ),
              ),
              Positioned(
                left: 40,
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage:
                      AssetImage("./images/doctorappimages/doctor2.png"),
                ),
              )
            ],
          ),
        ),
        const CircleAvatar(
            radius: 25,
            child:
                ImageIcon(AssetImage("./images/doctorappimages/brain.png")))));

    doctorList.add(Doctors(
        "Pediatrics",
        "12 doctors",
        SizedBox(
          width: 200,
          child: Stack(
            children: const [
              CircleAvatar(
                radius: 15,
                backgroundImage:
                    AssetImage("./images/doctorappimages/doctor.png"),
              ),
              Positioned(
                left: 20,
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage:
                      AssetImage("./images/doctorappimages/doctor1.png"),
                ),
              ),
              Positioned(
                left: 40,
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage:
                      AssetImage("./images/doctorappimages/doctor2.png"),
                ),
              )
            ],
          ),
        ),
        const CircleAvatar(
            radius: 25,
            child: ImageIcon(
                AssetImage("./images/doctorappimages/pediatrics.png")))));
    doctorList.add(Doctors(
        "Pulmonology",
        "12 doctors",
        SizedBox(
          width: 200,
          child: Stack(
            children: const [
              CircleAvatar(
                radius: 15,
                backgroundImage:
                    AssetImage("./images/doctorappimages/doctor.png"),
              ),
              Positioned(
                left: 20,
                child: CircleAvatar(
                  radius: 15,
                  // backgroundImage: AssetImage("./images/doctorappimagesdoctor1.png"),
                ),
              ),
              Positioned(
                left: 40,
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage:
                      AssetImage("./images/doctorappimages/doctor2.png"),
                ),
              )
            ],
          ),
        ),
        const CircleAvatar(
            radius: 25,
            child: ImageIcon(
                AssetImage("./images/doctorappimages/pulmonology.png")))));
    doctorList.add(Doctors(
        "Opthalmology",
        "12 doctors",
        SizedBox(
          width: 200,
          child: Stack(
            children: const [
              CircleAvatar(
                radius: 15,
                backgroundImage:
                    AssetImage("./images/doctorappimages/doctor.png"),
              ),
              Positioned(
                left: 20,
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage:
                      AssetImage("./images/doctorappimages/doctor1.png"),
                ),
              ),
              Positioned(
                left: 40,
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage:
                      AssetImage("./images/doctorappimages/doctor2.png"),
                ),
              )
            ],
          ),
        ),
        const CircleAvatar(
            radius: 25,
            child: ImageIcon(AssetImage("./images/doctorappimages/eye.png")))));

    return doctorList;
  }
}
