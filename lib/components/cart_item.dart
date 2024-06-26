import 'package:flutter/material.dart';
import 'package:nikee/models/cart.dart';
import 'package:nikee/models/shoe.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class CartItem extends StatefulWidget {
  Shoe shoe;
  CartItem({
    super.key,
    required this.shoe
    });

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {

  void removeItemFromCart (){
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.shoe);
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(10)
      ),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(widget.shoe.imagePath,
          )),
        title: Text(widget.shoe.name),
        subtitle: Text(widget.shoe.Price),
        trailing: IconButton(
          onPressed: removeItemFromCart, 
          icon: const Icon(Icons.delete)),
      ),
    );
  }
}