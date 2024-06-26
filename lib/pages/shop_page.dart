import 'package:flutter/material.dart';
import 'package:nikee/components/shoe_tile.dart';
import 'package:nikee/models/cart.dart';
import 'package:nikee/models/shoe.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
void addShoeToCart(Shoe shoe) {
  // Add the shoe to the cart using Provider
  Provider.of<Cart>(context, listen: false).addItemToCart(shoe);

  // Alert the user that the shoe was successfully added to the cart
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text("Successfully Added"),
      content: const Text("Check your cart."),
      actions: <Widget>[
        TextButton(
          child: const Text("OK"),
          onPressed: () {
            Navigator.of(context).pop(); // Close the dialog
          },
        ),
      ],
    ),
  );
}


  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) {
      return Column(
        children: [
          // search bar
          Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Search"),
                Icon(Icons.search),
              ],
            ),
          ),

          // message
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 25),
            child: Text(
              "Everyone flies..some fly longer than others",
              style: TextStyle(color: Colors.grey),
            ),
          ),

          // hot picks
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Hot Picks  🔥",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 15),

          // horizontal list view
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: value.getShoeList().length,
              itemBuilder: (context, index) {
                // create a shoe
                Shoe shoe = value.getShoeList()[index];
                return ShoeTile(
                  shoe: shoe,
                  onTap: () => addShoeToCart(shoe),
                  ); // 
              },
            ),
          ),

          const Padding(
            padding: EdgeInsets.symmetric(vertical: 25),
            child: Divider(
              color: Colors.white,
            ),
          ),
        ],
      );
    });
  }
}
