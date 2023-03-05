import 'package:flutter/material.dart';

class ShoesDetail extends StatefulWidget {
  String shoeImagePath;
  String shoesName;
  ShoesDetail(this.shoeImagePath, this.shoesName);

  @override
  State<ShoesDetail> createState() => _ShoesDetailState();
}

class _ShoesDetailState extends State<ShoesDetail> {
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
          Container(
            height: 220,
            width: 330,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage(widget.shoeImagePath)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 20.0, right: 20, top: 30, bottom: 10),
            child: Text(
              "Related Item",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff0a3e7b)),
            ),
          ),
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: createShoesCards(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 20.0, right: 20, bottom: 5, top: 30),
            child: Container(
              width: 300,
              child: Text(
                "NIKE HYPERRE 2017 YELLOW BLACK MEN BASKETBALL SHOES 852423-700",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff0a3e7b)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10),
            child: Container(
              width: 300,
              child: Text(
                "Nike shoes are the foundation of the sneaker collecting hobby as we know it today. The legacy of the most famous brand in sneakers began in the 1970s when the legendary Oregon track coach Bill Bowerman began cobbling together his own custom-made track spikes and racing flats",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(232, 126, 126, 126)),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 200, top: 10),
            child: Container(
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: ImageIcon(AssetImage("./images/heart.png"))),
                  Column(
                    children: [
                      Text(
                        "Total Price",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromARGB(255, 122, 122, 122)),
                      ),
                      Text(
                        "\$125.0",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff0a3e7b)),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
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
      './images/s0.png',
      './images/boot1.png',
      './images/s2.png',
      './images/s3.png',
    ];
    int i = 0;
    while (i < 4) {
      Padding card = Padding(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(shoesDetail[i + 4]))),
        ),
      );
      shoesCards.add(card);
      i++;
    }
    return shoesCards;
  }
}
