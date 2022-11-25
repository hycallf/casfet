import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
                )
              ],
            ),
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

              child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
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
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text("Nama Product"),
                      TextField(),
                    ],
                  ),
                  Column(
                    children: [
                      Text("Harga"),
                      TextField(),
                    ],
                  ),
                  Column(
                    children: [
                      Text("Description"),
                      TextField(),
                    ],
                  )
                ],
              ),

              padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              //border: BorderRadius.circular(20)
            ),

            /// Akhir dari bagian dashboard
          ])),
    );
  }
}
