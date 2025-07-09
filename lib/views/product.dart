import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Location",
                style: TextStyle(color: Colors.grey, fontSize: 17),
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Image.asset("images/location.png"),
                  SizedBox(width: 8),
                  Text(
                    "New York, USA",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 8),
                  Image.asset("images/altOk.png"),
                  Spacer(),
                  Image.asset("images/zil.png"),
                ],
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),

        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search), // soluna icon alır
                suffixIcon: GestureDetector(
                  onTap: () {
                    print("Image icon clicked");
                  },
                  child: Image.asset(
                    'images/Filter.png',
                    width: 24,
                    height: 24,
                  ),
                ),
                hintText: "Search your favourite pizza",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              onChanged: (value) {
                // Arama metni değiştiğinde yapılacaklar
              },
              onSubmitted: (value) {
                // Klavyede Enter’a basıldığında arama yap
              },
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),

              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blueGrey,
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 6,
                      child: Column(
                        children: [
                          Text("Special Offer"),
                          SizedBox(height: 10),
                          Text("Discount 20% off applied at checkout"),
                          SizedBox(height: 15),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("Order Noew"),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Container(child: Image.asset("images/pizza.png")),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
