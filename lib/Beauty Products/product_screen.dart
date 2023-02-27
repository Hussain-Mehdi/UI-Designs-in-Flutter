import 'package:flutter/material.dart';

import 'product_model.dart';

class SkinProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(children: [
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
                Text(
                  "Normal Skin",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                          color: Color.fromARGB(255, 202, 202, 202))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.shopping_cart,
                      color: Color.fromARGB(255, 252, 225, 240),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
            child: TextField(
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {}, icon: Icon(Icons.search_outlined)),
                    hintText: "Search products for skin",
                    filled: true,
                    fillColor: Color(0xfff8f8f8),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none))),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "10 Products Result",
                  style: TextStyle(
                      fontSize: 12, color: Color.fromARGB(255, 173, 173, 173)),
                ),
                Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color.fromARGB(255, 228, 228, 228)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Sort by",
                            style: TextStyle(fontSize: 12),
                          ),
                          Icon(
                            Icons.arrow_downward,
                            size: 15,
                          )
                        ]))
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              physics: ScrollPhysics(),
              itemCount: ProductModel.productsSender().length,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) => createProducts(index),
            ),
          ),
        ]));
  }

  Widget createProducts(int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 100,
        height: 150,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Color.fromARGB(232, 214, 214, 214),
                  spreadRadius: 0.5,
                  offset: Offset(1, 1),
                  blurRadius: 1)
            ],
            color: Color.fromARGB(255, 252, 225, 240),
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 90,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          ProductModel.productsSender()[index].productImage))),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "${ProductModel.productsSender()[1].productName.toString()}",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
            Text("${ProductModel.productsSender()[1].productDetail.toString()}",
                style: TextStyle(fontSize: 12)),
            Text("${ProductModel.productsSender()[1].productPrice.toString()}",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
