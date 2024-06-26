import 'package:flutter/material.dart';
import 'package:nikee/components/cart_item.dart';
import 'package:nikee/models/cart.dart';
import 'package:nikee/models/shoe.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) =>  Column(
        children: [
          //heading 
          Text(
            "My Cart",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24
            ),
            ),

            const SizedBox(height: 10,),

            Expanded(
              child: ListView.builder(
                itemCount: value.getUserCart().length,
                itemBuilder: (context, index) {
                  //get individual shoe
                  Shoe individualShoe = value.getUserCart()[index];


                  //return the cart item
                  return CartItem(shoe: individualShoe,);
                }
                ))
        ],
      )
      );
  }
}