import 'package:flutter/material.dart';

class CheckingScreen extends StatelessWidget {
  const CheckingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xff05032a),
      child: Column(
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
          const Text(
            "Current Balance",
            style: TextStyle(color: Color.fromARGB(255, 204, 203, 203)),
          ),
          Text(
            "\$2,178.74",
            style: TextStyle(
                fontSize: 40, color: Color.fromARGB(255, 235, 235, 235)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: createFeatures(),
          ),
          Text(
            "Transactions",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 235, 235, 235)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: createTransaction(),
          )
        ],
      ),
    );
  }

  List<Widget> createFeatures() {
    List<Widget> featuresList = [];
    List<String> featureDetail = [
      './images/moneymanagement/trans.png',
      './images/moneymanagement/deposit.png',
      './images/moneymanagement/send.png',
      './images/moneymanagement/rec.png',
      'Transfer',
      'Deposit',
      'Send',
      'Recieve'
    ];
    int i = 0;

    while (i < 4) {
      Column feature = Column(
        children: [
          CircleAvatar(
            backgroundColor: Color(0xff464467),
            radius: 25,
            child: ImageIcon(
              AssetImage(featureDetail[i]),
              size: 20,
            ),
          ),
          Text(
            featureDetail[i + 4],
            style: TextStyle(
                color: Color.fromARGB(255, 212, 212, 212), fontSize: 12),
          )
        ],
      );
      featuresList.add(feature);
      i++;
    }
    return featuresList;
  }

  List<Widget> createTransaction() {
    List<Widget> transactionList = [];
    List<String> transactionDate = ['D', 'W', 'M', 'Y'];
    int i = 0;

    while (i < 4) {
      Container date = Container(
        width: 70,
        height: 40,
        decoration: BoxDecoration(
            color: i == 0 ? Color(0xff472aae) : Colors.transparent,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                color: i == 0
                    ? Colors.transparent
                    : Color.fromARGB(120, 255, 255, 255))),
        child: Center(
          child: Text(
            transactionDate[i],
            style: TextStyle(color: Color.fromARGB(167, 255, 255, 255)),
          ),
        ),
      );
      transactionList.add(date);
      i++;
    }
    return transactionList;
  }

  List<Widget> createHistory() {
    List<Widget> historyTile = [];

    List<String> historyDetail = [
      'images/moneymanagement/amazom.png',
      'images/moneymanagement/apple.png',
      'images/moneymanagement/.png',
      'images/moneymanagement/event.png',
      'Amazon Prime',
      'Apple',
      'Vegan Party',
      'EventBride'
    ];

    int i = 0;
    while (i < 4) {
      Container(
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
                  color: Color.fromARGB(255, 236, 236, 236), fontSize: 10),
            ),
            trailing: Text(
              "\$2355.00",
              style: TextStyle(
                  color: Color.fromARGB(255, 236, 236, 236),
                  fontWeight: FontWeight.w700),
            )),
      );
    }
    return historyTile;
  }
}
