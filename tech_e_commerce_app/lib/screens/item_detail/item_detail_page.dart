import 'package:flutter/material.dart';
import 'package:tech_e_commerce_app/config/themes/theme.dart';

class ItemDetailPage extends StatefulWidget {
  const ItemDetailPage({Key? key}) : super(key: key);

  @override
  State<ItemDetailPage> createState() => _ItemDetailPageState();
}

class _ItemDetailPageState extends State<ItemDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        automaticallyImplyLeading: false,
        flexibleSpace: Padding(
          padding: const EdgeInsets.fromLTRB(15.0, 25.0, 15.0, 0),
          child: Center(
            child: Row(
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Row(
                    children: const [
                      Icon(Icons.arrow_back_ios, size: 14),
                      Text('PS5', style: TextStyle(fontSize: 15)),
                    ],
                  ),
                ),
                const Spacer(),
                Image.asset('assets/images/share.png', scale: 1.2),
              ],
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'PULSE 3D             Wireless Headset',
                  style: TextStyle(
                      fontSize: 23.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 4.0,
                      height: 1.2),
                ),
              ),
              const SizedBox(height: 30.0),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                      color: AppStyleColor.customSecondaryPalette,
                      borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(20),
                          right: Radius.circular(20))),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            const SizedBox(height: 10),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Wrap(
                                  direction: Axis.vertical,
                                  spacing: 22.0,
                                  children: const [
                                    _CustomImageLabel(
                                        image: 'assets/images/eye.png',
                                        label: '1.5 k'),
                                    _CustomImageLabel(
                                        image: 'assets/images/filledHeart.png',
                                        label: '212'),
                                    _CustomImageLabel(
                                        image: 'assets/images/shoppingBag.png',
                                        label: '120'),
                                  ],
                                ),
                                const Spacer(),
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
                                        style: TextStyle(fontSize: 11.0),
                                      ),
                                      const SizedBox(width: 3),
                                      Image.asset('assets/images/star.png',
                                          scale: 1.2),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 70.0),
                            Image.asset('assets/images/indicator.png',
                                scale: 1.2),
                            const SizedBox(height: 35.0),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          '\$180.95',
                                          style: TextStyle(
                                              fontSize: 18.0,
                                              decoration:
                                                  TextDecoration.lineThrough),
                                        ),
                                        Text(
                                          '\$179.95',
                                          style: TextStyle(
                                              fontSize: 30.0,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    const Spacer(),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 5.0, horizontal: 12.0),
                                      decoration: const BoxDecoration(
                                          color: AppStyleColor.customPalette,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8))),
                                      child: Text(
                                        '24%',
                                        style: TextStyle(
                                            color: Colors.greenAccent.shade400,
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 20.0),
                                Row(
                                  children: [
                                    Image.asset(
                                        'assets/images/deliveryTruck.png',
                                        color: Colors.white38,
                                        scale: 1.2),
                                    const SizedBox(width: 10.0),
                                    const Text(
                                      'Prices incl. VAT. plus shipping costs',
                                      style: TextStyle(
                                          color: Colors.white38,
                                          fontSize: 12.0),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 7.0),
                                const Text(
                                  'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor, Aenean massa.',
                                  style: TextStyle(
                                      color: Colors.white38, fontSize: 12.0),
                                ),
                                const SizedBox(height: 10.0),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Column(
                                    children: [
                                      const Text(
                                        'Choose Color',
                                        style: TextStyle(fontSize: 15.0),
                                      ),
                                      const SizedBox(height: 10.0),
                                      Wrap(
                                        spacing: 10,
                                        children: const [
                                          _ColorBox(
                                              color:
                                                  AppStyleColor.customPalette),
                                          _ColorBox(color: Colors.white),
                                          _ColorBox(color: Colors.redAccent),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: const BoxDecoration(
                              color: AppStyleColor.customPalette,
                              borderRadius: BorderRadius.horizontal(
                                  left: Radius.circular(20),
                                  right: Radius.circular(20))),
                          child: Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 12.0, horizontal: 15.0),
                                decoration: const BoxDecoration(
                                    color: AppStyleColor.customSecondaryPalette,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: Image.asset('assets/images/heart.png',
                                    scale: 1.2),
                              ),
                              const SizedBox(width: 6.0),
                              Flexible(
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 13.0),
                                  decoration: const BoxDecoration(
                                      color:
                                          AppStyleColor.customSecondaryPalette,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                          'assets/images/shoppingCart.png',
                                          scale: 1.2),
                                      const SizedBox(width: 15.0),
                                      const Text(
                                        'ADD TO CART',
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
              left: 60,
              top: 75,
              child: Image.asset('assets/images/PS5Headset.png', scale: 1.2)),
        ],
      ),
    );
  }
}

class _ColorBox extends StatelessWidget {
  final Color color;
  const _ColorBox({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: Colors.white, width: 1.2),
        borderRadius: const BorderRadius.all(
          Radius.circular(5.0),
        ),
      ),
      height: 25.0,
      width: 25.0,
    );
  }
}

class _CustomImageLabel extends StatelessWidget {
  final String image;
  final String label;
  const _CustomImageLabel({Key? key, required this.image, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image, scale: 1.2),
        const SizedBox(height: 5.0),
        Text(
          label,
          style: const TextStyle(color: Colors.white38, fontSize: 15.0),
        ),
      ],
    );
  }
}
