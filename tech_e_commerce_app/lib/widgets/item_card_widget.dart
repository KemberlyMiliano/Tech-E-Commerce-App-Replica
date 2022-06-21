import 'package:flutter/material.dart';
import 'package:tech_e_commerce_app/config/themes/theme.dart';
import 'package:tech_e_commerce_app/screens/screens.dart';

class ItemCard extends StatefulWidget {
  final double oldPrice;
  final double newPrice;
  final String itemName;
  final String itemImage;
  const ItemCard(
      {Key? key,
      required this.oldPrice,
      required this.newPrice,
      required this.itemName,
      required this.itemImage})
      : super(key: key);

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  String heartImagePath = 'assets/images/heartSmall.png';
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ItemDetailPage()),
        );
      },
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          elevation: 3.0,
          shadowColor: Colors.black,
          color: AppStyleColor.customSecondaryPalette,
          child: SizedBox(
            height: 250,
            width: MediaQuery.of(context).size.width * 0.44,
            child: Stack(children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5.0),
                          decoration: const BoxDecoration(
                              color: AppStyleColor.customPalette,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          child: Row(
                            children: [
                              const Text(
                                '4.6',
                                style: TextStyle(fontSize: 9.0),
                              ),
                              const SizedBox(width: 3),
                              Image.asset('assets/images/star.png', scale: 1.5),
                            ],
                          ),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              if (heartImagePath !=
                                  'assets/images/whiteFilledHeart.png') {
                                heartImagePath =
                                    'assets/images/whiteFilledHeart.png';
                              } else {
                                heartImagePath = 'assets/images/heartSmall.png';
                              }
                            });
                          },
                          child: Image.asset(heartImagePath),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        color: AppStyleColor.customSecondaryPalette.shade600,
                        borderRadius: const BorderRadius.vertical(
                            bottom: Radius.circular(20))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 35,
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Text(
                            widget.itemName,
                            style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                height: 1),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              '\$${widget.newPrice.toStringAsFixed(2)}',
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(width: 3),
                            Text('\$${widget.oldPrice.toStringAsFixed(2)}',
                                style: const TextStyle(
                                    fontSize: 10,
                                    decoration: TextDecoration.lineThrough))
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Positioned(
                  left: 5,
                  top: 35,
                  child: Image.asset(
                    widget.itemImage,
                    height: 130,
                  )),
              Positioned(
                right: 10,
                bottom: 80,
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  decoration: const BoxDecoration(
                      color: AppStyleColor.customPalette,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Row(
                    children: [
                      Image.asset('assets/images/shoppingCartAdd.png',
                          scale: 1.2),
                    ],
                  ),
                ),
              ),
            ]),
          )),
    );
  }
}
