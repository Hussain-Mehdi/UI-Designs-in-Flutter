import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(),
        ),
        backgroundColor: Color(0xff00bd5f),
        elevation: 1,
        title: Center(child: Text("easyPaisa")),
        actions: const [
          Icon(Icons.search_outlined),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.notifications_outlined),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              decoration: BoxDecoration(color: Color(0xff00bd5f)),
              child: createCard()),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: createMainFeatures(),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0, top: 20),
            child: Text(
              "More with Easypaisa",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
          ),
          createGrid()
        ],
      )),
    );
  }

  Widget createCard() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 50,
                width: 120,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("./images/easypaisa/logo.png"))),
              ),
              Text(
                "Hussain Mehdi".toUpperCase(),
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "03363924960",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1),
                  ),
                  Container(
                    width: 130,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Color(0xff00bd5f),
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                        child: Text(
                      "SignIn",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    )),
                  )
                ],
              ),
              Text(
                "Sign in to your easypaisa account",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> createMainFeatures() {
    List<Widget> cards = [];
    List<String> cardDetail = [
      'Send Money',
      'Bill Payment',
      'Mobile Package',
      './images/easypaisa/cash.png',
      './images/easypaisa/bill.png',
      './images/easypaisa/mobile.png',
    ];
    int i = 0;
    while (i < 3) {
      Padding card = Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 90,
          width: 100,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(
                    color: Color.fromARGB(29, 0, 0, 0),
                    spreadRadius: 0.5,
                    blurRadius: 1.5,
                    offset: Offset(0, 2))
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ImageIcon(
                AssetImage(cardDetail[i + 3]),
                color: Color(0xff00bd5f),
                size: 30,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                cardDetail[i],
                style:
                    const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
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

  Widget createGrid() {
    List<String> gridData = [
      'Easyload',
      'EasyCash Loan',
      'Rs.1 Game',
      'invite & Earn',
      'Mini App',
      'Savings',
      'Buy Now Pay Later',
      'Donation',
      'See All',
      './images/easypaisa/phone.png',
      './images/easypaisa/cash1.png',
      './images/easypaisa/rupee.png',
      './images/easypaisa/inviteEarn.png',
      './images/easypaisa/miniapp.png',
      './images/easypaisa/savings.png',
      './images/easypaisa/buynow.png',
      './images/easypaisa/donate.png',
      './images/easypaisa/seeall.png',
    ];
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15),
        child: Container(
            margin: const EdgeInsets.only(top: 15),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: GridView.builder(
              itemCount: 9,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) => SizedBox(
                height: 90,
                width: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      width: 35,
                      height: 35,
                      image: AssetImage(gridData[index + 9]),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      gridData[index],
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
