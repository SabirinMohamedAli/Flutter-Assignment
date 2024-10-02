import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false, // Meesha ka saar calaamadda debug
    home: Screen1(), // Screen1 waa bogga ugu horreeya
  ));
}

// Screen 1 - Qaabka asalkaaga (Stack Colors)
class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Assignment1 Stack Colors"), // Cinwaan cusub
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 100,
              width: 160,
              color: Colors.black, // Outer layer (black)
            ),
            Container(
              height: 90,
              width: 150,
              color: Colors.brown, // Brown layer
            ),
            Container(
              height: 80,
              width: 140,
              color: Colors.pink, // Pink layer
            ),
            Container(
              height: 70,
              width: 130,
              color: Colors.yellow, // Yellow layer
            ),
            Container(
              height: 30,
              width: 30,
              color: Colors.green, // Inner layer (green)
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(16.0), // Siinayo padding si uu u muuqdo fiican
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.blue, // Midabka badhanka
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15), // Cabirka badhanka
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12), // Geeso wareegsan
            ),
          ),
          onPressed: () {
            // Ku guur Screen2 marka la riixo badhanka
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Screen2()),
            );
          },
          child: Text(
            "Ku dhufo si aad u aragto Assignment2", // Qoraal cusub
            style: TextStyle(fontSize: 18, color: Colors.white), // Qurxin qoraalka
          ),
        ),
      ),
    );
  }
}

// Screen 2 - Dukaanka oo leh sawirro, magacyo, iyo qiimooyin
class Screen2 extends StatelessWidget {
  // Liiska sheyga oo ay ku jiraan sawirka, magaca, iyo qiimaha
  final List<Map<String, String>> items = [
    {"image": "assets/1.jpg", "name": "perfume", "price": "\$200.0"},
    {"image": "assets/2.jpg", "name": "Diror", "price": "\$400.0"},
    {"image": "assets/3.jpg", "name": "Sauwage ", "price": "\$100.0"},
    {"image": "assets/4.jpg", "name": "Yara ", "price": "\$100.0"},
    {"image": "assets/5.jpg", "name": "Kay Ali", "price": "\$50.0"},
    {"image": "assets/6.jpg", "name": "COCO", "price": "\$79.0"},
    {"image": "assets/7.jpg", "name": "My Way ", "price": "\$80.0"},
    {"image": "assets/8.jpg", "name": "perfume  ", "price": "\$150.0"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Perfume Shop"), 
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Laba shey saf walba
          childAspectRatio: 0.75, // Waqti ku filan sheyga si uu u muuqdo isku dheeli tiran
        ),
        itemCount: items.length, // Tirada sheyga
        itemBuilder: (context, index) {
          final item = items[index]; // Sheyga hada socda
          return Card(
            margin: EdgeInsets.all(8.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: BorderSide(color: Colors.grey, width: 1.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Image.asset(
                    item["image"]!, // Sawirka sheyga
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  color: Colors.blue, // Midabka hoose ee sanduuqa
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item["name"]!, // Magaca sheyga
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                      SizedBox(height: 4.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            item["price"]!, // Qiimaha sheyga
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                          ),
                          Icon(
                            Icons.shopping_cart, // Icon-ka gaariga iibsiga
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
