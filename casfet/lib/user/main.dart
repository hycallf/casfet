import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First App',
      home: Scaffold(
          appBar: AppBar(
            title: Text('CASFET'),
            backgroundColor: Colors.blue,
          ),
          body: Column(children: <Widget>[
            Image.asset(
              'casfet-white.png',
              color: Colors.blue,
            ),
            Image.network('https://www.petanikode.com/img/flutter/flutter.png'),
            Text(
              'Minuman',
              style: TextStyle(fontSize: 24, fontFamily: "Serif", height: 2.0),
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //mainAxisAlignment: MainAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.network(
                  'https://cf.shopee.co.id/file/f09a42294b476bcdeaff947f2a963507',
                  width: 80.0,
                  height: 80.0,
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//103/MTA-6059982/agung_coffee_beer_agung_ngoro_-limun_jadul_khas_jombang_sejak_1963-_full05_h5d74bzt.jpg',
                  width: 80.0,
                  height: 80.0,
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://cf.shopee.co.id/file/9b137dbed8169a75fa393b3f463ae7b8',
                  width: 80.0,
                  height: 80.0,
                  fit: BoxFit.cover,
                ),
                Image.network(
                    'https://images.k24klik.com/product/large/apotek_online_k24klik_20211206100212359225_AQUA-AIR-MINERAL-1500ML.jpg',
                    width: 80.0,
                    height: 80.0,
                    fit: BoxFit.cover)
              ],
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //mainAxisAlignment: MainAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('Milku'),
                Text('Coffee Beer'),
                Text('Teh Botol'),
                Text('Air Mineral'),
              ],
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //mainAxisAlignment: MainAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.network(
                  'https://assets.klikindomaret.com/share/20037565/20037565_1.jpg',
                  width: 80.0,
                  height: 80.0,
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//84/MTA-3542214/floridina_floridina-orange-minuman--300-ml--kemasan-botol-_full02.jpg',
                  width: 80.0,
                  height: 80.0,
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//92/MTA-2643185/fruit-tea_fruit-tea-blackcurrant-minuman-kemasan--500-ml--botol-_full02.jpg',
                  width: 80.0,
                  height: 80.0,
                  fit: BoxFit.cover,
                ),
                Image.network(
                    'https://images.k24klik.com/product/large/apotek_online_k24klik_20211206100212359225_AQUA-AIR-MINERAL-1500ML.jpg',
                    width: 80.0,
                    height: 80.0,
                    fit: BoxFit.cover)
              ],
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //mainAxisAlignment: MainAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('Teh Pucuk'),
                Text('Floridina'),
                Text('Fruit Tea'),
                Text('Air Mineral')
              ],
            ),
          ])),
    );
  }
}
