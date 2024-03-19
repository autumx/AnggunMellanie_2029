import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("KOREAN FOOD"),
        titleTextStyle: TextStyle(
          fontSize: 20, 
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: ListView(
        children: [
          buildMenuItem(
            "Bulgogi",
            "Daging panggang Korea yang terbuat dari potongan tipis daging sapi yang dimarinasi dengan bumbu manis dan gurih, lalu dipanggang atau digoreng",
            "Rp17.000",
            5,
            "https://i.pinimg.com/236x/a5/b9/1d/a5b91ddde3649440363d5fde753085f6.jpg",
          ),
          buildMenuItem(
            "Bibimbap",
            "Nasi campur Korea yang disajikan dengan berbagai jenis sayuran, daging, dan telur.",
            "Rp20.000",
            4,
            "https://i.pinimg.com/564x/c4/7a/0a/c47a0a2659526fda74bd843a5d499ea9.jpg",
          ),
          buildMenuItem(
            "Kimchi Jjigae",
            "Sup pedas Korea yang terbuat dari kimchi, daging babi, dan bahan-bahan lain.",
            "Rp25.000",
            4,
            "https://i.pinimg.com/236x/81/7e/dd/817edd25464cd15efc7fde21c5023188.jpg",
          ),
          buildMenuItem(
            "Tteokbokki",
            "Makanan ringan Korea yang terbuat dari bumbu pedas dan tteok (kue beras).",
            "Rp15.000",
            3,
            "https://i.pinimg.com/236x/89/40/02/8940023b742d5362ebee2b4e18368f38.jpg",
          ),
          buildMenuItem(
            "Samgyeopsal",
            "Daging babi Korea yang dipanggang di atas panggangan dan disajikan dengan banchan (hidangan pendamping).",
            "Rp30.000",
            5,
            "https://i.pinimg.com/564x/ad/e9/ec/ade9ec10e4da4f8d0e8345976e04e252.jpg",
          ),
          buildMenuItem(
            "Japchae",
            "Mie korea yang terbuat dari kentang yang dipotong tipis, wortel, jamur, dan daging.",
            "Rp22.000",
            4,
            "https://i.pinimg.com/236x/76/0b/86/760b86f4aab16c91efbfca330df68e4d.jpg",
          ),
          buildMenuItem(
            "Jajangmyeon",
            "Mie hitam Korea dengan saus kacang kedelai dan daging babi.",
            "Rp18.000",
            4,
            "https://i.pinimg.com/236x/f1/01/d7/f101d71a990d50321f2a8b5ca77d2e81.jpg",
          ),
          buildMenuItem(
            "Korean Fried Chicken",
            "Ayam goreng Korea yang digoreng hingga renyah dan disajikan dengan saus pedas atau manis.",
            "Rp25.000",
            5,
            "https://i.pinimg.com/564x/1e/dd/96/1edd96dd17cf5984b1e1d58103612c49.jpg",
          ),
        ],
      ),
    );
  }

  Widget buildMenuItem(String title, String description, String price, int rating, String imageUrl) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.network(
                imageUrl,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 15), 
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 14),
                  ),
                  Text(
                    price,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: List.generate(
                      rating,
                      (index) => Icon(Icons.star, color: Colors.amber),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
