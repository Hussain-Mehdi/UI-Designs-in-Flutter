import 'package:flutter/material.dart';

import 'product_model.dart';

class SkinProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(children: [
          Row(
            children: [Text("Data"), Text("Data")],
          ),
          Expanded(
            child: GridView.builder(
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
            color: Color.fromARGB(255, 252, 225, 240),
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
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
