import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nikee/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Image.asset(
              "lib/Images/nike logo.png",
              height: 240,
              ),
              const SizedBox(height: 10,),

            //title
            const Text(
              "Just Do It",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
              ),
              const SizedBox(height: 10,),
                          const Text(
              "Brand New Sneakers and custom kicks made with premium quality",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 16
              ),
              textAlign: TextAlign.center,
              ),

              //start now button
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Container(
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.grey[900]
                  ),
                  padding: const EdgeInsets.all(25),
                  child: Center(
                    child: Text(
                      "Shop Now",
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                  ),
                ),
              )

          ],
        ),
      ),
    );
  }
}