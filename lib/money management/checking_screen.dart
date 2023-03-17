import 'package:flutter/material.dart';

class CheckingScreen extends StatelessWidget {
  const CheckingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Material(
      color: const Color(0xff05032a),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                  color: Colors.white,
                ),
                Text(
                  "Checking",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                ImageIcon(
                  AssetImage("./images/moneymanagement/logo.png"),
                  color: Colors.white,
                  size: 30,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30, left: 140),
            child: const Text(
              "Current Balance",
              style: TextStyle(color: Color.fromARGB(255, 204, 203, 203)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 40, left: 115),
            child: Text(
              "\$2,178.74",
              style: TextStyle(
                  fontSize: 35, color: Color.fromARGB(255, 235, 235, 235)),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: createFeatures(),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, top: 15, bottom: 10),
            child: Text(
              "Transactions",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 235, 235, 235)),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: createTransaction(),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, top: 15, bottom: 10),
            child: Text(
              //"Today",
              "Today",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 235, 235, 235)),
            ),
          ),
          Container(
            height: 320,
            child: ListView(
              padding: EdgeInsets.zero,
              children: createHistory(),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 110,
                height: 50,
                decoration: BoxDecoration(
                    color: 0 == 0 ? Color(0xff472aae) : Colors.transparent,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: 1 == 0
                            ? Colors.transparent
                            : Color.fromARGB(120, 255, 255, 255))),
                child: Center(
                  child: Text(
                    "Checking",
                    style: TextStyle(color: Color.fromARGB(167, 255, 255, 255)),
                  ),
                ),
              ),
              Container(
                width: 110,
                height: 50,
                decoration: BoxDecoration(
                    color: 1 == 0 ? Color(0xff472aae) : Colors.transparent,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: 1 == 0
                            ? Colors.transparent
                            : Color.fromARGB(120, 255, 255, 255))),
                child: Center(
                  child: Text(
                    "Savings",
                    style: TextStyle(color: Color.fromARGB(167, 255, 255, 255)),
                  ),
                ),
              ),
            ],
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
            radius: 23,
            child: ImageIcon(
              AssetImage(featureDetail[i]),
              color: Colors.white,
              size: 16,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            featureDetail[i + 4],
            style: TextStyle(
                color: Color.fromARGB(255, 212, 212, 212), fontSize: 10),
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
      'images/moneymanagement/amazon.png',
      'images/moneymanagement/apple.png',
      'images/moneymanagement/party.png',
      'images/moneymanagement/event.png',
      'Amazon Prime',
      'Apple',
      'Vegan Party',
      'EventBride',
      'Movies and films',
      'Iphone 14',
      'Birthday Party',
      'Bride cermoney',
      '\$9.99',
      '\$342.42',
      '\$552.16',
      '\$92.00',
    ];

    int i = 0;
    while (i < 4) {
      Padding historycard = Padding(
        padding: const EdgeInsets.only(bottom: 5, left: 20.0, right: 20),
        child: Container(
          decoration: BoxDecoration(
              color: Color(0xff1b1941),
              borderRadius: BorderRadius.circular(10)),
          child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Color(0xff3f4161),
                child: ImageIcon(
                  AssetImage(historyDetail[i]),
                  color: Colors.white,
                ),
              ),
              title: Text(
                historyDetail[i + 4],
                style: TextStyle(
                    color: Color.fromARGB(255, 236, 236, 236),
                    fontWeight: FontWeight.w700),
              ),
              subtitle: Text(
                historyDetail[i + 8],
                style: TextStyle(
                    color: Color.fromARGB(255, 236, 236, 236), fontSize: 10),
              ),
              trailing: Text(
                historyDetail[i + 12],
                style: TextStyle(
                    color: Color.fromARGB(255, 236, 236, 236),
                    fontWeight: FontWeight.w700),
              )),
        ),
      );
      historyTile.add(historycard);
      i++;
    }
    return historyTile;
  }
}
