import 'dart:convert';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

import 'package:newflapps/models/products.dart';
import 'package:newflapps/utils/routs.dart';
import 'package:newflapps/widgets/home_widgets/product_header.dart';
import 'package:newflapps/widgets/home_widgets/product_list.dart';

import 'package:newflapps/widgets/theme.dart';

import 'package:velocity_x/velocity_x.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final kingjason =
        await rootBundle.loadString("assets/files/kingsmall.json");
    final decodedData = jsonDecode(kingjason);
    var productsData = decodedData["products"];
    ProductsModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:  context.canvasColor,
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.pushNamed(context, MyRoutes.cartRout) ,

          
          backgroundColor: context.theme.buttonColor,
          child: Icon(CupertinoIcons.cart),),
        body: SafeArea(
          child: Container(
            padding: Vx.m32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MallHeader(),
                if (
                  ProductsModel.items != null &&
                    ProductsModel.items.isNotEmpty)
                  ProductList().py20().expand()
                else
                  CircularProgressIndicator().centered().expand(),
                  
              ],
            ),
          ),
        ));
  }
}



// class MallHeader extends StatelessWidget {
//   const MallHeader({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         "KingsMall".text.xl3.bold.color(MyTheme.darkBluishColor).make(),
//         "Shop With Respect".text.xl2.make(),
//       ],
//     );
//   }
// }

// class ProductList extends StatelessWidget {
//   const ProductList({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       shrinkWrap: true,
//       itemCount: ProductsModel.items.length,
//       itemBuilder: (context, index) {
//         final product = ProductsModel.items[index];
//         return ProductItem(product: product);
//       },
//     );
//   }
// }

// class ProductItem extends StatelessWidget {
//   final Item product;

//   const ProductItem({Key? key, required this.product}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     var captionStyle = context.captionStyle;
//     return VxBox(
//       child: Row(children: [
//         ProductImage(
//           image: product.image,
//         ),
//         Expanded(child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisAlignment: MainAxisAlignment.center,
//          children: [
//            product.name.text.lg.color(MyTheme.darkBluishColor).bold.make(),
//          product.desc.text.caption(context).make(),
//          10.heightBox,
//          ButtonBar(
//            alignment: MainAxisAlignment.spaceBetween,
//            buttonPadding: EdgeInsets.zero,
//            children: [
//             "\$${product.price}".text.bold.xl.make(),
//             ElevatedButton(onPressed: (){},
//             style: ButtonStyle(
//               backgroundColor: MaterialStateProperty.all(MyTheme.darkBluishColor),
//               shape: MaterialStateProperty.all(StadiumBorder())
//             ),
//              child: "Buy".text.make())
//            ],
//          ).pOnly(right: 12)
//          ],
//         ),
//         )
//       ]
//       ),
//     ).white.rounded.square(150).make().py16();
//   }
// }

// class ProductImage extends StatelessWidget {
//   final String image;

//   const ProductImage({Key? key, required this.image}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Image.asset(
//       image,
//     ).box.rounded.p8.color(MyTheme.creamColor).make().p16().w40(context);
//   }
// }
















// appBar: AppBar(
//   //backgroundColor: Colors.redAccent,
//   // elevation: 0.0,
//   // iconTheme: IconThemeData(color: Colors.white),

//   title: Text(
//     "Kings Mall",
//     // style: TextStyle(
//     //   color: Colors.white,
//     // ),
//   ),
// ),
// body: Padding(
//   padding: EdgeInsets.all(16),

//   child: (ProductsModel.items.isNotEmpty)?
//   //  ListView.builder(
//   //   itemCount: ProductsModel.items.length,
//   //   itemBuilder: (context, index) => ItemWidget(
//   //           item: ProductsModel.items[index],
//   //         ),

//   // ):
//   GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
//   mainAxisSpacing: 15,
//   crossAxisSpacing: 15,
//   ),

//    itemBuilder: (context , index){
//      final item = ProductsModel.items[index];

//      return Card(
//        clipBehavior: Clip.antiAlias,
//        shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10) ),

//      child : GridTile(
//        header:Container(
//        child: Text(item.name,
//        style: TextStyle(
//          color: Colors.white
//        ),),

//        padding: const EdgeInsets.all(12),
//        decoration: BoxDecoration(
//          color: Colors.redAccent
//        ),
//        ),
//        child: Image.asset(item.image),

//        footer: Container(

//        child: Text(item.price.toString(),
//        style: TextStyle(color: Colors.white),

//        ),
//        padding: EdgeInsets.all(12),
//        decoration: BoxDecoration(
//          color: Colors.redAccent,
//        ),),
//        ));

//    },
//    itemCount: ProductsModel.items.length,
//    )
//   : Center(
//     child: CircularProgressIndicator(),
//   ),
// ),
// drawer: MyDrawer(),


