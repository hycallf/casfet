import 'package:flutter/material.dart';

class Drink extends StatefulWidget {
  const Drink({super.key});

  @override
  State<Drink> createState() => _DrinkState();
}

class _DrinkState extends State<Drink> {
  final ScrollController _controllerOne = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
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

      Container(
        decoration: const BoxDecoration(
          color: Color(0xffD9D9D9),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0), // radius
          ),
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            "Search a product....",
            style: TextStyle(
                fontSize: 16,
                fontFamily: "Timesquare",
                fontWeight: FontWeight.w400,
                color: Color(0xff4F4B4B)),
          ),
          Icon(
            Icons.search,
            color: Color(0xff4F4B4B),
          )
        ]),
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
                print("Icon Sort clicked");
              },
              icon: Icon(Icons.sort, color: Colors.blue, size: 30.0)),
        ],
      ),

      Text(
        'Minuman',
        style: TextStyle(fontSize: 24, fontFamily: "Serif", height: 2.0),
      ),
      SizedBox(height: 25),

      // Scrollbar(
      //   controller: _controllerOne,
      //   thumbVisibility: true,
      //   child: GridView.builder(
      //     controller: _controllerOne,
      //     itemCount: 20,
      //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //         crossAxisCount: 3),
      //     itemBuilder: (BuildContext context, int index) {
      //       return Column(children: <Widget>[
      //         Image.asset(
      //           'images/drink/milku.jpg',
      //           width: 80.0,
      //           height: 80.0,
      //           fit: BoxFit.cover,
      //         ),
      //         Text("$index")
      //       ]);
      //     },
      //   ),
      // ),
      Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //mainAxisAlignment: MainAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: <Widget>[
          Image.asset(
            'images/drink/milku.jpg',
            width: 80.0,
            height: 80.0,
            fit: BoxFit.cover,
          ),
          Image.asset(
            'images/drink/coffebeer.jpg',
            width: 80.0,
            height: 80.0,
            fit: BoxFit.cover,
          ),
          Image.asset(
            'images/drink/tehpucuk.jpg',
            width: 80.0,
            height: 80.0,
            fit: BoxFit.cover,
          ),
          Image.asset('images/drink/aqua.jpg',
              width: 80.0, height: 80.0, fit: BoxFit.cover)
        ],
      ),
      Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //mainAxisAlignment: MainAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text('Milku'),
          Text('Coffee Beer'),
          Text('Teh Pucuk'),
          Text('Air Mineral'),
        ],
      ),
      // ElevatedButton(onPressed: () {}, child: Text("Add to chart")),
      // menu minuman
      // Row(
      //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   //mainAxisAlignment: MainAxisAlignment.center,
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      //   children: <Widget>[
      //     Image.asset(
      //       'images/drink/milku.jpg',
      //       width: 80.0,
      //       height: 80.0,
      //       fit: BoxFit.cover,
      //     ),
      //     Image.asset(
      //       'images/drink/coffebeer.jpg',
      //       width: 80.0,
      //       height: 80.0,
      //       fit: BoxFit.cover,
      //     ),
      //     Image.asset(
      //       'images/drink/tehpucuk.jpg',
      //       width: 80.0,
      //       height: 80.0,
      //       fit: BoxFit.cover,
      //     ),
      //     Image.asset('images/drink/aqua.jpg',
      //         width: 80.0, height: 80.0, fit: BoxFit.cover)
      //   ],
      // ),
      // Row(
      //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   //mainAxisAlignment: MainAxisAlignment.center,
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   children: <Widget>[
      //     Text('Milku'),
      //     Text('Coffee Beer'),
      //     Text('Teh Pucuk'),
      //     Text('Air Mineral'),
      //   ],
      // ),
      // SizedBox(height: 50),
      // Row(
      //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   //mainAxisAlignment: MainAxisAlignment.center,
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   children: <Widget>[
      //     Image.asset(
      //       'images/drink/milku.jpg',
      //       width: 80.0,
      //       height: 80.0,
      //       fit: BoxFit.cover,
      //     ),
      //     Image.asset(
      //       'images/drink/milku.jpg',
      //       width: 80.0,
      //       height: 80.0,
      //       fit: BoxFit.cover,
      //     ),
      //     Image.asset(
      //       'images/drink/milku.jpg',
      //       width: 80.0,
      //       height: 80.0,
      //       fit: BoxFit.cover,
      //     ),
      //     Image.asset('images/drink/milku.jpg',
      //         width: 80.0, height: 80.0, fit: BoxFit.cover)
      //   ],
      // ),
      // Row(
      //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   //mainAxisAlignment: MainAxisAlignment.center,
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   children: <Widget>[
      //     Text('Teh Pucuk'),
      //     Text('Floridina'),
      //     Text('Fruit Tea'),
      //     Text('Air Mineral')
      //   ],
      // ),
    ]);
  }
}
