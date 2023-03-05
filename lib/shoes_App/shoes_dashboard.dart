import 'package:flutter/material.dart';

import 'shoes_detail.dart';

class ShoesDashboard extends StatefulWidget {
  @override
  State<ShoesDashboard> createState() => _ShoesDashboardState();
}

class _ShoesDashboardState extends State<ShoesDashboard> {
  bool clicked = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: ImageIcon(AssetImage("./images/shoesapp/menu.png"))),
                IconButton(onPressed: () {}, icon: Icon(Icons.search_outlined))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Best of\nShoe Collection",
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff0a3e7b)),
                ),
                CircleAvatar(
                  backgroundColor: Color(0xff0a3e7b),
                  child:
                      ImageIcon(AssetImage("./images/shoesapp/selective.png")),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              "Explore wide range of athietic collection",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff0a3e7b)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 0.0),
            child: SizedBox(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Athletic",
                      style: TextStyle(
                          color: Color(0xff0a3e7b),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Casual",
                      style: TextStyle(
                          color: Color(0xff0a3e7b),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Loafers",
                      style: TextStyle(
                          color: Color(0xff0a3e7b),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Sneakers",
                      style: TextStyle(
                          color: Color(0xff0a3e7b),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                )),
          ),
          Expanded(
            child: ListView(
              children: createShoesCards(),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> createShoesCards() {
    bool likepressed = false;
    List<Widget> shoesCards = [];
    List<String> shoesDetail = [
      'Nike',
      'Kyrie',
      'Zoom',
      'Cosmic',
      './images/shoesapp/s0.png',
      './images/shoesapp/boot1.png',
      './images/shoesapp/s2.png',
      './images/shoesapp/s3.png',
    ];
    int i = 0;
    while (i < 4) {
      Padding card = Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: SizedBox(
          width: 340,
          height: 120,
          child: Stack(children: [
            Container(
              height: 110,
              width: 340,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xff201d2e)),
              child: Padding(
                padding: const EdgeInsets.only(left: 295.0),
                child: IconButton(
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                ShoesDetail(shoesDetail[i], shoesDetail[i])));
                  },
                  icon: const Icon(
                    Icons.add_shopping_cart_outlined,
                  ),
                ),
              ),
            ),
            Container(
              width: 300,
              height: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color(0xff47435c),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 250.0),
                child: IconButton(
                    color: Colors.white,
                    onPressed: () {
                      setState(() {
                        if (likepressed) {
                          likepressed = false;
                        } else {
                          likepressed = true;
                        }
                      });
                    },
                    icon: likepressed == true
                        ? ImageIcon(
                            AssetImage("./images/shoesapp/heartfill.png"))
                        : ImageIcon(AssetImage("./images/shoesapp/heart.png"))),
              ),
            ),
            AnimatedContainer(
              duration: const Duration(seconds: 1),
              height: 110,
              width: clicked ? 250 : 340,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    margin: const EdgeInsets.only(left: 5),
                    height: clicked ? 110 : 140,
                    width: clicked ? 110 : 140,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(shoesDetail[i + 4]))),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    margin: EdgeInsets.only(
                      left: clicked ? 10 : 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          shoesDetail[i],
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff0a3e7b)),
                        ),
                        AnimatedContainer(
                          duration: const Duration(seconds: 1),
                          margin: const EdgeInsets.only(top: 5, bottom: 20),
                          width: clicked ? 100 : 130,
                          child: const Text(
                            "Find your wings with off-road run",
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 10,
                                color: Color.fromARGB(151, 10, 63, 123)),
                          ),
                        ),
                        const Text(
                          "125.00",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff0a3e7b)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ]),
        ),
      );
      shoesCards.add(InkWell(
          onTap: () {
            setState(() {
              if (clicked) {
                clicked = false;
              } else {
                clicked = true;
              }
            });
          },
          child: card));
      i++;
    }
    return shoesCards;
  }
}
