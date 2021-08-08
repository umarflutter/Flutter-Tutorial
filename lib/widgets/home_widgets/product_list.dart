import 'package:flutter/material.dart';
import 'package:newflapps/models/products.dart';
import 'package:newflapps/pages/home_detail_page.dart';
import 'package:newflapps/widgets/home_widgets/product_image.dart';
import 'package:newflapps/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';


class ProductList extends StatelessWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: ProductsModel.items.length,
       itemBuilder: (context, index) {
        final product = ProductsModel.getByPosition(index);
        return InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeDetailPage(
                product: product,
              ),
            ),
          ),
          child: ProductItem(product: product,),
        );
      },
    );
  }
}
class ProductItem extends StatelessWidget {
  final Item product;

  const ProductItem({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return VxBox(
      child: Row(
        children: [
        Hero(
          tag: product.id.toString(),
          child: ProductImage(
            image: product.image,
          ),
        ),
        Expanded(child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
         children: [
           product.name.text.lg.color(context.accentColor).bold.make(),
         product.desc.text.caption(context).make(),
         10.heightBox,
         ButtonBar(
           alignment: MainAxisAlignment.spaceBetween,
           buttonPadding: EdgeInsets.zero,
           children: [
            "\$${product.price}".text.bold.xl.make(),
            ElevatedButton(onPressed: (){},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                context.theme.buttonColor,),
              shape: MaterialStateProperty.all(StadiumBorder())
            ),
             child: "Add to Cart".text.make()).wh(120, 40)
           ],
         ).pOnly(right: 50)
         ],
        ),
        )
      ]
      ),
    ).color(context.cardColor).rounded.square(150).make().py16();
  }
}
