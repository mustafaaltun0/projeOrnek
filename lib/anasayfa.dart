import 'package:flutter/material.dart';
import 'package:flutter_application_3/renkler.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 2),
            borderRadius: BorderRadius.circular(50),
          ),
          child: IconButton(
            icon: Icon(Icons.arrow_back, color: yazRenk3),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite, color: yazRenk3),
            onPressed: () {
              print('Favorilere eklendi!');
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Image.asset(
              "resimler/tavuk1.png",
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "TAVUK TABAĞI",
              style: TextStyle(fontSize: 25, color: yazRenk4, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  "Tavuğumuz, en taze malzemelerle birlikte özenle seçilen özel soslarla marine edilmiştir. Her ısırıkta zengin lezzeti ve aromasıyla damaklarınıza şenlik yaşatacak.",
                  style: TextStyle(fontSize: 20, color: yazRenk2, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 16), // Metin ile saat ve değerlendirme kısmı arasında boşluk
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.access_time, color: anaRenk),
                          SizedBox(width: 4),
                          Text("30 dk", style: TextStyle(color: yazRenk4, fontSize: 18)),
                        ],
                      ),
                      Row(
                        children: [
                          Row(
                            children: List.generate(5, (index) {
                              return Icon(
                                index < 4 ? Icons.star : Icons.star_border,
                                color: Colors.yellow,
                              );
                            }),
                          ),
                          SizedBox(width: 4),
                          Text("4.5", style: TextStyle(color: yazRenk4, fontSize: 18)),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16), // Saat ve değerlendirme ile fiyat arasında boşluk
                Text(
                  "120 TL",
                  style: TextStyle(fontSize: 30, color: yazRenk4, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 16), // Fiyat ile buton arasında boşluk
                SizedBox(
                  width: 200,
                  height: 50,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "SEPETE EKLE",
                      style: TextStyle(color: yazRenk1, fontSize: 18),
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: yazRenk3,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
