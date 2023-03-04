import 'package:flutter/material.dart';

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
                    icon: ImageIcon(AssetImage("./images/menu.png"))),
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
                    child: ImageIcon(AssetImage("./images/selective.png")))
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
            child: createShoesCards(),
          ),
        ],
      ),
    );
  }

  Widget createShoesCards() {
    List<String> shoesDetail = [
      'Nike',
      'Kyrie',
      'Zoom',
      'Cosmic',
      './images/s0.png',
      './images/boot1.png',
      './images/s2.png',
      './images/s3.png',
    ];

    return ListView.builder(itemBuilder: (context, index) {
      return GestureDetector(
          onTap: () {
            setState(() {
              if (clicked) {
                clicked = false;
              } else {
                clicked = true;
              }
            });
          },
          child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: SizedBox(
                width: 340,
                height: 120,
                child: Stack(children: [
                  Container(
                    height: 110,
                    width: 340,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xff201d2e)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 285.0),
                      child: IconButton(
                        color: Color.fromARGB(255, 247, 247, 247),
                        onPressed: () {},
                        icon: const Icon(
                          Icons.shopping_cart_outlined,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 300,
                    height: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xff47435c),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 245.0),
                      child: IconButton(
                          color: Color.fromARGB(255, 247, 247, 247),
                          onPressed: () {},
                          icon: ImageIcon(AssetImage("./images/heart.png"))),
                    ),
                  ),
                  AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    height: 110,
                    width: clicked ? 250 : 340,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 255, 255, 255)),
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
                                  image: AssetImage(shoesDetail[index + 4]))),
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
                                shoesDetail[index],
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff0a3e7b)),
                              ),
                              AnimatedContainer(
                                duration: const Duration(seconds: 1),
                                margin:
                                    const EdgeInsets.only(top: 5, bottom: 20),
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
              )));
    });
  }
}
