import 'package:flutter/material.dart';
import 'package:newflapps/models/products.dart';
import 'package:newflapps/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item product;

  const HomeDetailPage({Key? key,required this.product}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.canvasColor,
      bottomNavigationBar:   Container(
        color: context.cardColor,
        child: ButtonBar(
             alignment: MainAxisAlignment.spaceBetween,
             buttonPadding: EdgeInsets.zero,
             children: [
              "\$${product.price}".text.bold.xl4.red800.make(),
              ElevatedButton(onPressed: (){},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  context.theme.buttonColor),
                shape: MaterialStateProperty.all(StadiumBorder())
              ),
               child: "Add To Cart".text.make()).wh(140, 50)
             ],
           ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: product.id.toString(),
              child: Image.asset(product.image),
              ).h32(context),
              Expanded(
                child: VxArc(
                  height: 30,
                  arcType : VxArcType.CONVEY,
                  edge: VxEdge.TOP,
                  child: Container(
                    color: context.cardColor,
                    width: context.screenWidth,
                    child: Column(
                      children : [
                 product.name.text.lg.xl4.color(context.accentColor).bold.make(),
                 product.desc.text.caption(context).make(),
                 10.heightBox,
                  "vcdtfyuihgcyfygggggggggggggguuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu"
                  .text.caption(context).make().p16(),
                      ],
                    ).py64(),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
