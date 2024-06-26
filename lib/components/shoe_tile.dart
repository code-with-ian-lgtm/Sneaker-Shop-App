import 'package:flutter/material.dart';
import 'package:nikee/models/shoe.dart';

// ignore: must_be_immutable
class ShoeTile extends StatelessWidget {
  final Shoe shoe;
  final void Function()? onTap;

  ShoeTile({
    super.key,
    required this.shoe,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250, // Fixed width to avoid overflow
      margin: const EdgeInsets.only(left: 25),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Shoe image
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: SizedBox(
              width: double.infinity, // Ensures the image takes full width of parent container
              height: 200, // Fixed height for the image
              child: Image.asset(
                shoe.imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),

          const SizedBox(height: 10), // Space between image and description

          // Description
          Container(
            width: double.infinity, 
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              shoe.description,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black54,
              ),
              maxLines: 5,
              overflow: TextOverflow.ellipsis, // Prevents text overflow
            ),
          ),
          const Spacer(),


          // Price and details
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Shoe name
                  Text(
                    shoe.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    maxLines: 1, // Ensures the text does not overflow
                    overflow: TextOverflow.ellipsis, // Prevents text overflow
                  ),

                  // Price
                  Text(
                    'KES ${shoe.Price}',
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                    maxLines: 1, // Ensures the text does not overflow
                    overflow: TextOverflow.ellipsis, // Prevents text overflow
                  ),
                ],
              ),

              // Add to cart icon
              GestureDetector(
                onTap: onTap,
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
