import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:newflapps/models/products.dart';
import 'package:newflapps/widgets/drawer.dart';
import 'package:newflapps/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

   loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final kingjason =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(kingjason);
    var productsData = decodedData["products"];
    ProductsModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
     //final dummyList  = List.generate(10, (index) => ProductsModel.prod[0]);
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.redAccent,
        // elevation: 0.0,
        // iconTheme: IconThemeData(color: Colors.white),

        title: Text(
          "Kings Mall",
          // style: TextStyle(
          //   color: Colors.white,
          // ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: ProductsModel.items.length,
          itemBuilder: (context, index) => ItemWidget(
                  item: ProductsModel.items[index],
                ),
         
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}

@override
Widget build(BuildContext context) {
  
  throw UnimplementedError();
}
