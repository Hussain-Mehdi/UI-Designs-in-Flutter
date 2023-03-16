import 'package:flutter/material.dart';

class MoneyHomeScreen extends StatelessWidget {
  const MoneyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xff05032a),
      child: Column(
        children: [
          SizedBox(
            height: 120,
          ),
          Row(
            children: [
              ImageIcon(AssetImage("./images/moneymanagement/")),
              Text("Wallet"),
              CircleAvatar(
                backgroundImage: AssetImage("./images/moneymanagement/"),
              )
            ],
          )
        ],
      ),
    );
  }
}
