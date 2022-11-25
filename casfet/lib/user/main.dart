import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(home: new HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      title: 'First App',
      home: Scaffold(
          appBar: AppBar(
            toolbarHeight: 80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  child: Image.asset(
                    'assets/images/cft.png',
                    fit: BoxFit.contain,
                    height: 40,
                  ),
                  //padding: EdgeInsets.fromLTRB(.0, 0.0, 0.0, 0.0),
                )
              ],
            ),
            // title: Image.asset('assets/images/casfet-white.png',
            //     fit: BoxFit.cover),
            backgroundColor: Colors.blue,
          ),
          body: Column(children: <Widget>[
            Container(
              /// bagian dashboard toko,
              /// menampilkan logo toko dan saldo toko tersebut
              decoration: const BoxDecoration(
                color: Color(0xff14618C),
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0), // radius
                ),
              ),

              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: [
                      Container(
                        child: Image.asset(
                          'assets/images/brand-1.png', // logo toko
                          width: 117,
                          height: 117,
                          fit: BoxFit.contain,
                        ),
                        margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                      )
                    ],
                  ),
                  // Column sebelah kanan dari dashboard
                  Column(
                    children: <Widget>[
                      Row(
                        children: [
                          Text(
                            "Food / Drink Name",
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: "Timesquare",
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "ID: 0000000000",
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: "Timesquare",
                                //fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.price_change,
                            color: Colors.white,
                          ),
                          Text(
                            "Rp. 9,999,999,999",
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: "Timesquare",
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
              // child: Image.asset(
              //   'assets/images/casfet-white.png',
              // ),
              //color: Color(0xff14618C),
              padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              //border: BorderRadius.circular(20)
            ),

            /// Akhir dari bagian dashboard

            /// Search bar
            Container(
              decoration: const BoxDecoration(
                color: Color(0xffD9D9D9),
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0), // radius
                ),
              ),
              child: TextField(
                //controller: _controller,
                //obscureText: true,

                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'search a product...',
                ),

                onSubmitted: (String value) async {
                  await showDialog<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Thanks!'),
                        content: Text(
                            'You typed "$value", which has length ${value.characters.length}.'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
            ),

            //icon sort dan kawannya :v
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                IconButton(
                    onPressed: () {
                      print("Icon Sort clicked");
                    },
                    icon: Icon(Icons.book_online_outlined,
                        color: Colors.blue, size: 30.0)),
                IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => SortPage()));
                      print("Icon Sort clicked");
                    },
                    icon: Icon(Icons.sort, color: Colors.blue, size: 30.0)),
              ],
            ),
            // Container(
            //     child: IconButton(
            //         icon: Icon(
            //           Icons.sort,
            //           color: Colors.blue,
            //           size: 30.0,
            //         ),
            //         alignment: Alignment.centerRight,
            //         onPressed: () {
            //           print("Icon Sort clicked");
            //         })),
            // Container(
            //     child: IconButton(
            //         icon: Icon(
            //           Icons.book_online_outlined,
            //           color: Colors.blue,
            //           size: 30.0,
            //         ),
            //         alignment: Alignment.centerRight,
            //         onPressed: () {
            //           print("Icon Sort clicked");
            //         })),
            // Row(
            //     mainAxisAlignment: MainAxisAlignment.end,
            //     children: const <Widget>[
            //       Icon(
            //         Icons.sort,
            //         color: Colors.blue,
            //         size: 30.0,
            //         //textDirection: TextDirection.ltr,
            //         //margin: EdgeInsets.all(10.0),
            //         //EdgeInsetsGeometry? 10.0,
            //       ),
            //     ]),
            //Container(),
            // Image.asset(
            //   'assets/images/casfet-white.png',
            //   color: Colors.blue,
            // ),
            //SizedBox(height: 15),
            Text(
              'Minuman',
              style: TextStyle(fontSize: 24, fontFamily: "Serif", height: 2.0),
            ),
            SizedBox(height: 25),

            // menu minuman
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
            SizedBox(height: 50),
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

class SortPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Filter/Sort"),
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              title: Text("A-Z"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Makanan"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Minuman"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Harga terendah"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Harga tertinggi"),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
