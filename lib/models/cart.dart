import 'package:flutter/material.dart';
import 'package:nikee/models/shoe.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale
List<Shoe> shoeShop = [
  Shoe(
    name: "Air Max", 
    Price: "KES 16,900", 
    description: "Latest In Town", 
    imagePath: 'lib/Images/3e45c754-10e6-489b-a110-5a6ad02cfeea.jpeg'),

  Shoe(
    name: "Nike AeroSprint Pro", 
    Price: "KES 16,900", 
    description: "The Nike AeroSprint Pro offers unparalleled speed and agility. Designed with a lightweight mesh upper and responsive cushioning, these shoes are perfect for athletes who need to stay quick on their feet", 
    imagePath: 'lib/Images/Advbridge British Canvas Shoes Boots Men Autumn New Personality Fashion Casual Boots High-top Tooling Winter Shoes Tide Boots - SUP3 _ 41.jpeg'),

  Shoe(
    name: "Nike VaporFlex Elite", 
    Price: " KES 19,500", 
    description: "Experience the ultimate in flexibility and comfort with the Nike VaporFlex Elite. Featuring a dynamic Flyknit construction and adaptive cushioning, these shoes provide a glove-like fit and superior traction on any surface.", 
    imagePath: 'lib/Images/f3aa61cf-aefe-467e-a0db-44efac80d2b1.jpeg'),

  Shoe(
    name: "Nike GlideFusion Max", 
    Price: "KES 23,400", 
    description: "The Nike GlideFusion Max combines sleek design with maximum performance. With a breathable upper and innovative midsole technology, these shoes deliver exceptional support and a smooth, effortless stride.", 
    imagePath: 'lib/Images/Shoes & Bags For Men & Women _ Cheap Best Shoes & Bags Online Sale.jpeg'),

  Shoe(
    name: " Nike Elevate Zoom", 
    Price: "KES 20,800", 
    description: "Reach new heights with the Nike Elevate Zoom. These shoes feature a unique Zoom Air unit that provides explosive energy return and a secure fit, making them ideal for high-impact sports and intense workouts.", 
    imagePath: 'lib/Images/men shoes Sneakers Male Mens casual Shoes tenis Luxury shoes Trainer Race Breathable Shoes fashion loafers running Shoes for men - F602 _ 43.jpeg'), 

    
     
    Shoe(
    name: "Nike PhantomStrike", 
    Price: "KES 18,200", 
    description: "Dominate the field with the Nike PhantomStrike. Engineered for precision and power, these shoes boast a robust synthetic upper and a customizable fit, giving you the edge you need to excel in any game.", 
    imagePath: 'lib/Images/Mens Sneakers Fashion Casual Running Shoes Lover Gym Shoes Light Breathe Comfort Outdoor Air _.jpeg'), 


     Shoe(
    name: "Nike UltraBoost Velocity", 
    Price: "KES 24,700", 
    description: "Take your running to the next level with the Nike UltraBoost Velocity. Featuring a responsive midsole and a lightweight, breathable upper, these shoes provide unmatched comfort and support for long-distance runs", 
    imagePath: 'lib/Images/Nike Air Jordan 1 court purple.jpeg'), 

    Shoe(
    name: "Nike Quantum Leap", 
    Price: "KES 21,000", 
    description: "Step into the future of footwear with the Nike Quantum Leap. These shoes offer cutting-edge design and advanced cushioning technology, ensuring a smooth and responsive ride every time you hit the pavement.", 
    imagePath: 'lib/Images/men shoes Sneakers Male Mens casual Shoes tenis Luxury shoes Trainer Race Breathable Shoes fashion loafers running Shoes for men - F602 _ 43.jpeg'), 

    Shoe(
    name: "Nike HyperMax Reactor", 
    Price: " KES 23,500", 
    description: "Push your limits with the Nike HyperMax Reactor. With a durable, high-performance build and state-of-the-art cushioning, these shoes are designed to withstand the rigors of intense training and competition.", 
    imagePath: 'lib/Images/Where To Buy Reps Nike Air Jordan 1 Sneakers For Women And Men,Shop AJ1 Shoes online.jpeg'), 
    Shoe(
    name: "Nike LunarPulse", 
    Price: "KES 16,700", 
    description: "Embrace the perfect balance of comfort and style with the Nike LunarPulse. These shoes feature a sleek, modern design and a plush Lunar midsole, providing exceptional cushioning and support for everyday wear.", 
    imagePath: 'lib/Images/men shoes Sneakers Male Mens casual Shoes tenis Luxury shoes Trainer Race Breathable Shoes fashion loafers running Shoes for men - F602 _ 43.jpeg'),

   Shoe(
    name: "Nike PowerDrive Surge", 
    Price:"KES 17,800", 
    description: "Feel the power with the Nike PowerDrive Surge. Engineered for optimal performance, these shoes offer a secure fit and responsive cushioning, making them ideal for athletes who demand the best from their footwear.", 
    imagePath: "lib/Images/men shoes Sneakers Male Mens casual Shoes tenis Luxury shoes Trainer Race Breathable Shoes fashion loafers running Shoes for men - F602 _ 43.jpeg")         

];
  //list of items in user cart

  List<Shoe> userCart = [];

  //get list of shoes for sale
  List<Shoe> getShoeList(){
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart(){
    return userCart;
  }


  //add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove items from cart
  void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }
}