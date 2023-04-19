import 'package:flutter/material.dart';

class SadaPayScreen extends StatelessWidget {
  const SadaPayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 305,
                    width: 210,
                    decoration: BoxDecoration(
                        color: const Color(0xff02dab5),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0, top: 25),
                          child: SizedBox(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Current Balance",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("25,000.00",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22,
                                        fontWeight: FontWeight.w900))
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              bottom: 28.0, left: 18, right: 18),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const CircleAvatar(
                                    backgroundColor:
                                        Color.fromARGB(220, 244, 67, 54),
                                    radius: 15,
                                  ),
                                  Transform.translate(
                                    offset: const Offset(-12, 0),
                                    child: const CircleAvatar(
                                      foregroundColor: Colors.transparent,
                                      backgroundColor:
                                          Color.fromARGB(232, 255, 153, 0),
                                      radius: 15,
                                    ),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 10.0),
                                child: Icon(
                                  Icons.arrow_forward_rounded,
                                  color: Colors.white,
                                  size: 25,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15.0),
                      child: Container(
                        height: 140,
                        width: 170,
                        decoration: BoxDecoration(
                            color: Color(0xff1daafa),
                            borderRadius: BorderRadius.circular(15)),
                        child: Stack(children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 12.0, top: 10),
                            child: Icon(
                              Icons.arrow_downward_rounded,
                              color: Colors.white,
                            ),
                          ),
                          Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding:
                                    EdgeInsets.only(left: 12.0, bottom: 10),
                                child: Text(
                                  "Load\nMoney",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                              ))
                        ]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Container(
                        height: 140,
                        width: 170,
                        decoration: BoxDecoration(
                            color: const Color(0xfffb806e),
                            borderRadius: BorderRadius.circular(15)),
                        child: Stack(children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(right: 10.0, top: 10),
                              child: Transform.rotate(
                                angle: -185,
                                child: const Icon(
                                  Icons.arrow_downward_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          const Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding:
                                    EdgeInsets.only(left: 12.0, bottom: 10),
                                child: Text(
                                  "Send &\nRequest",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                              ))
                        ]),
                      ),
                    ),
                  ]),
                ]),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, bottom: 12, top: 15),
              child: Text(
                "Today",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: Color.fromARGB(255, 10, 10, 10)),
              ),
            ),
            Expanded(
                child: Container(
              color: Colors.white,
              child: ListView(
                children: createCard(context),
              ),
            ))
          ],
        ),
      ),
    ));
  }

  List<Widget> createCard(BuildContext context) {
    List<String> userData = [
      'Muhammad Saqib Zaman',
      'Ali Yaqteen',
      'Ali Mehdi',
      'Hussain Mehdi',
      'Saleh Mehdi',
      'Arslan',
      'RS. 1200.00',
      'RS. 6000.00',
      'RS. 1000.00',
      'RS. 780.00',
      'RS. 1800.00',
      'RS. 1200.00',
    ];
    List<Widget> cards = [];
    List<Color> colors = [
      Color(0xffe6faf8),
      Color(0xfffff2f1),
    ];
    int i = 0;
    while (i < 6) {
      Padding card = Padding(
        padding: const EdgeInsets.only(bottom: 25.0, left: 10, right: 10),
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: colors[0],
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Transform.rotate(
                          angle: i % 2 == 0 ? -60 : 0,
                          child: Image(
                              height: 20,
                              width: 20,
                              color: i % 2 == 0
                                  ? Color(0xffff7b66)
                                  : Color(0xff00cda9),
                              image: AssetImage("./images/sadapay/arrow.png")),
                        ),
                      )),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          userData[i],
                          style: const TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(178, 0, 0, 0),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text(
                          "5:23 AM",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color.fromARGB(131, 0, 0, 0),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Text(
                userData[i + 6],
                style: TextStyle(
                  fontSize: 18,
                  color: i == 0 ? Color(0xff1ec6aa) : Colors.black,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
        ),
      );
      cards.add(card);
      i++;
    }
    return cards;
  }
}
