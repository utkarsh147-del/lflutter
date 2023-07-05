import 'package:flutter/material.dart';
import 'package:helloworld/utils/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';
import '../models/catalogue.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: context.canvasColor,
        bottomNavigationBar: Container(
          color: context.cardColor,
          child: ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            buttonPadding: Vx.mH8,
            children: [
              "\$${catalog.price}".text.bold.xl4.red800.make(),
              10.heightBox,
              ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(context.primaryColor),
                          shape: MaterialStateProperty.all(StadiumBorder())),
                      child: "Add to cart".text.make())
                  .wh(120, 50)
            ],
          ).p32(),
        ),
        body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Hero(
                      tag: Key(catalog.id.toString()),
                      child: Image.network(catalog.image))
                  .h32(context),
              Expanded(
                  child: VxArc(
                height: 30.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                    color: context.cardColor,
                    width: context.screenWidth,
                    child: Column(
                      children: [
                        RichText(
                          text: TextSpan(
                            text: catalog.name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: context.accentColor,
                                fontSize: 34.0),
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                              text: catalog.desc, style: context.captionStyle),
                        ),
                      ],
                    ).py64()),
              ))
            ],
          ).p16(),
        ));
  }
}
