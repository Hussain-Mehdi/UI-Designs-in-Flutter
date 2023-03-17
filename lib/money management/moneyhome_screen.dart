import 'package:flutter/material.dart';

class MoneyHomeScreen extends StatelessWidget {
  const MoneyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xff05032a),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                ImageIcon(
                  AssetImage("./images/moneymanagement/logo.png"),
                  size: 70,
                  color: Colors.white,
                ),
                Text(
                  "Wallet",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                CircleAvatar(
                  backgroundImage:
                      AssetImage("./images/moneymanagement/pot1.jpg"),
                )
              ],
            ),
          ),
          SizedBox(
            height: 190,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: createCardDetail(),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 18.0, top: 20),
            child: Text(
              "OTOBNK Assets",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                  color: Colors.white),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Card(
              color: Color(0xff464366),
              child: ListTile(
                  leading: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      backgroundImage:
                          AssetImage("./images/moneymanagement/withdraw.png")),
                  title: Text(
                    "Checking",
                    style: TextStyle(
                        color: Color.fromARGB(255, 236, 236, 236),
                        fontWeight: FontWeight.w700),
                  ),
                  subtitle: Text(
                    "*********231",
                    style: TextStyle(
                        color: Color.fromARGB(255, 236, 236, 236),
                        fontSize: 10),
                  ),
                  trailing: Text(
                    "\$2355.00",
                    style: TextStyle(
                        color: Color.fromARGB(255, 236, 236, 236),
                        fontWeight: FontWeight.w700),
                  )),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Card(
              color: Color(0xff464366),
              child: ListTile(
                  leading: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      backgroundImage:
                          AssetImage("./images/moneymanagement/jar.png")),
                  title: Text(
                    "Checking",
                    style: TextStyle(
                        color: Color.fromARGB(255, 236, 236, 236),
                        fontWeight: FontWeight.w700),
                  ),
                  subtitle: Text(
                    "*********231",
                    style: TextStyle(
                        color: Color.fromARGB(255, 236, 236, 236),
                        fontSize: 10),
                  ),
                  trailing: Text(
                    "\$2355.00",
                    style: TextStyle(
                        color: Color.fromARGB(255, 236, 236, 236),
                        fontWeight: FontWeight.w700),
                  )),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 18.0, top: 10, bottom: 10),
            child: Text(
              "More",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                  color: Colors.white),
            ),
          ),
          SizedBox(
            height: 130,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: createMoreOptions(),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
            height: 60,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: createDownButton(),
            ),
          )
        ],
      ),
    );
  }

  List<Widget> createCardDetail() {
    List<Widget> cardList = [];
    int i = 0;

    while (i < 3) {
      Padding card = Padding(
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: Container(
          width: 290,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              color: const Color(0xff2f2a53),
              border: Border.all(color: Color.fromARGB(33, 255, 255, 255))),
          child: Stack(
            children: [
              const Positioned(
                  top: 20,
                  left: 20,
                  child: Text(
                    "DebetCard",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )),
              const Positioned(
                  top: 80,
                  left: 20,
                  child: Text(
                    "Card Number",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromARGB(255, 233, 233, 233),
                    ),
                  )),
              const Positioned(
                  top: 100,
                  left: 20,
                  child: Text(
                    "1234567890563",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      letterSpacing: 5,
                      color: Colors.white,
                    ),
                  )),
              Positioned(
                  top: 85,
                  left: 230,
                  child: Container(
                    height: 30,
                    width: 35,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            invertColors: true,
                            fit: BoxFit.fill,
                            image: AssetImage(
                                "./images/moneymanagement/chip.png"))),
                  )),
              const Positioned(
                  top: 140,
                  left: 20,
                  child: Text(
                    "Name",
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  )),
              const Positioned(
                  top: 140,
                  left: 135,
                  child: Text(
                    "Exp.",
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  )),
              Positioned(
                  top: 150,
                  left: 20,
                  child: SizedBox(
                    width: 250,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Andrew Tait",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                        Text(
                          "Name",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                        Text(
                          "VISA",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontStyle: FontStyle.italic,
                              fontSize: 20),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      );
      cardList.add(card);
      i++;
    }
    return cardList;
  }

  List<Widget> createMoreOptions() {
    List<Widget> moreCards = [];
    List<String> cardData = [
      'images/moneymanagement/credit.png',
      'images/moneymanagement/jar.png',
      'images/moneymanagement/wallet.png',
      'images/moneymanagement/withdraw.png',
      'Apply for Credit Card today',
      'Learn how to budget your money',
      'Add credit card to your Wallet',
      'Withdraw your money easily'
    ];
    int i = 0;

    while (i < 4) {
      Padding card = Padding(
        padding: EdgeInsets.all(5),
        child: Container(
          height: 100,
          width: 120,
          decoration: BoxDecoration(
              gradient: i == 0
                  ? LinearGradient(colors: [
                      Color(0xff1c1157),
                      Color(0xff261771),
                    ])
                  : LinearGradient(colors: [
                      Color(0xff0d073a),
                      Color(0xff1a1151),
                    ]),
              borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(cardData[i])),
                  ),
                ),
                Text(
                  cardData[i + 4],
                  style: TextStyle(
                      fontSize: 12, color: Color.fromARGB(183, 230, 230, 230)),
                )
              ],
            ),
          ),
        ),
      );
      moreCards.add(card);
      i++;
    }
    return moreCards;
  }

  List<Widget> createDownButton() {
    List<Widget> moreCards = [];
    List<String> button = ['Wallet', 'Statistic', 'Loan', 'Amounts'];
    int i = 0;

    while (i < 4) {
      Padding card = Padding(
        padding: EdgeInsets.only(top: 0, left: 10, bottom: 10),
        child: Container(
            width: 100,
            height: 50,
            decoration: BoxDecoration(
                gradient: i == 0
                    ? LinearGradient(colors: [
                        Color(0xff1c1157),
                        Color(0xff261771),
                      ])
                    : LinearGradient(colors: [
                        Color(0xff0d073a),
                        Color(0xff1a1151),
                      ]),
                borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Text(
                button[i],
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
            )),
      );
      moreCards.add(card);
      i++;
    }
    return moreCards;
  }
}
