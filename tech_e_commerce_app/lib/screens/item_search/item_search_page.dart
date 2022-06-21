import 'package:flutter/material.dart';
import 'package:tech_e_commerce_app/widgets/item_card_widget.dart';

class ItemSearchPage extends StatefulWidget {
  const ItemSearchPage({Key? key}) : super(key: key);

  @override
  State<ItemSearchPage> createState() => _ItemSearchPageState();
}

class _ItemSearchPageState extends State<ItemSearchPage> {
  final List<String> filters = [
    'PS5',
    'PS4',
    'Xbox one',
    'Xbox one X',
    'Xbox one Y'
  ];
  int _selectedFilterIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        flexibleSpace: Padding(
          padding: const EdgeInsets.fromLTRB(15.0, 25.0, 15.0, 0),
          child: Center(
            child: Row(
              children: [
                Image.asset('assets/images/menu.png', scale: 1.2),
                const Spacer(),
                Image.asset('assets/images/bell.png', scale: 1.2),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 45,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: filters.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedFilterIndex = index;
                        });
                      },
                      child: _FilterText(
                          text: filters[index],
                          isSelected: index == _selectedFilterIndex),
                    );
                  }),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.8,
              child: GridView.count(
                primary: false,
                crossAxisSpacing: 15,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                children: const <Widget>[
                  ItemCard(
                      itemName: 'PlayStation 5',
                      itemImage: 'assets/images/PS5AndController.png',
                      oldPrice: 900.00,
                      newPrice: 890.00),
                  ItemCard(
                      itemName: 'PlayStation 5',
                      itemImage: 'assets/images/PS5Render.png',
                      oldPrice: 900.00,
                      newPrice: 890.00),
                  ItemCard(
                      itemName: 'Pulse 3D       Wireless Headset',
                      itemImage: 'assets/images/PS5Headset.png',
                      oldPrice: 179.95,
                      newPrice: 180.95),
                  ItemCard(
                      itemName: 'Media Remote',
                      itemImage: 'assets/images/PS5MediaRemote.png',
                      oldPrice: 54.95,
                      newPrice: 60.95),
                  ItemCard(
                      itemName: 'Dual Charger',
                      itemImage: 'assets/images/PS5DualCharger.png',
                      oldPrice: 900.00,
                      newPrice: 890.00),
                  ItemCard(
                      itemName: 'Controller',
                      itemImage: 'assets/images/PS5Controller.png',
                      oldPrice: 900.00,
                      newPrice: 890.00),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _FilterText extends StatelessWidget {
  final bool isSelected;
  final String text;
  const _FilterText({Key? key, required this.isSelected, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25.0),
      child: Stack(children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: Text(
            text,
            style: TextStyle(fontWeight: isSelected ? FontWeight.bold : null),
          ),
        ),
        Visibility(
          visible: isSelected,
          child: const Positioned(
              child: CircleAvatar(radius: 2, backgroundColor: Colors.white)),
        )
      ]),
    );
  }
}
