import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:confirm_dialog/confirm_dialog.dart';
import 'object/produk.dart';
import 'dart:io';

// import 'package:image_picker/image_picker.dart';
List<String> category = <String>['Makanan', 'Minuman', 'Snack'];

class ProductManager extends StatefulWidget {
  const ProductManager({super.key});

  @override
  State<ProductManager> createState() => _ProductManager();
}

class _ProductManager extends State<ProductManager> {
  late TextEditingController _controller;

  List<Product> produkToko = [
    Product(
        product_name: "Beng-beng",
        product_quantity: 20,
        product_price: 2000,
        product_sold: 20,
        product_img: "assets/images/no-image.jpg",
        product_category: "Snack"),
    Product(
        product_name: "Milku",
        product_quantity: 30,
        product_price: 4000,
        product_sold: 10,
        product_img: "assets/images/no-image.jpg",
        product_category: "Minuman"),
    Product(
        product_name: "Nasi Uduk",
        product_quantity: 20,
        product_price: 15000,
        product_sold: 40,
        product_img: "assets/images/no-image.jpg",
        product_category: "Makanan"),
  ];

  String dropdownValue = category.first;
  FocusNode _focusNode = FocusNode();
  bool _isFocused = false;

  void onFocusChange() {
    setState(() {
      _isFocused = !_isFocused;
    });
  }

  @override
  void initState() {
    _focusNode.addListener(() {
      onFocusChange();
    });
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _showModalEdit() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        double modalHeight = MediaQuery.of(context).size.height * 0.5;
        double keyboardHeight = MediaQuery.of(context).viewInsets.bottom;

        return Container(
          padding: EdgeInsets.all(20.0),
          color: Colors.black12,
          height: _isFocused ? modalHeight + keyboardHeight : modalHeight,
          child: Column(
            children: [
              Text(
                "Edit Form",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              TextField(
                decoration: InputDecoration(
                  hintText: "product name",
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "price",
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Stock",
                ),
              ),
              DropdownButton<String>(
                value: dropdownValue,
                icon: const Icon(Icons.arrow_downward),
                elevation: 16,
                style: const TextStyle(color: Colors.deepPurple),
                underline: Container(
                  height: 2,
                  color: Colors.deepPurpleAccent,
                ),
                onChanged: (String? value) {
                  // This is called when the user selects an item.
                  setState(() {
                    dropdownValue = value!;
                  });
                },
                items: category.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Column(
                children: [
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Submit",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.blue[900],
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 10.0)),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Cancel",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.red[900],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        );
      },
      isScrollControlled: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 10, left: 10, bottom: 10),
        child: ListView.builder(
            itemCount: produkToko.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(22),
                  child: Card(
                    child: Row(children: [
                      Expanded(
                        child: Row(
                          children: [
                            Container(
                              child: Image.asset(
                                '${produkToko[index].product_img}',
                                //https://www.themoviedb.org/t/p/w220_and_h330_face/u3bZgnGQ9T01sWNhyveQz0wH0Hl.jpg
                                //https://www.themoviedb.org/t/p/w440_and_h660_face/${movieList[index].posterPath.toString()}
                                width: 120,
                                height: 80,
                                fit: BoxFit.contain,
                              ),
                              decoration: new BoxDecoration(
                                //borderRadius: new BorderRadius.circular(16.0),
                                color: Color.fromARGB(250, 210, 235, 247),
                              ),
                            ),
                            Expanded(
                                child: Container(
                              margin: EdgeInsets.only(right: 10),
                              padding: EdgeInsets.all(8),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${produkToko[index].product_name}',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                    SizedBox(height: 4),
                                    Row(
                                      children: [
                                        Icon(
                                          CupertinoIcons.cube_box_fill,
                                          color: Colors.black,
                                          size: 15,
                                        ),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        Text(
                                          'Stok: ${produkToko[index].product_quantity}',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Icon(
                                          Icons.add_shopping_cart,
                                          color: Colors.black,
                                          size: 15,
                                        ),
                                        Text(
                                            'Terjual: ${produkToko[index].product_sold}'),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Icon(
                                          Icons.category,
                                          color: Colors.black,
                                          size: 15,
                                        ),
                                        Text(
                                            'Category: ${produkToko[index].product_category}'),
                                      ],
                                    ),
                                    SizedBox(height: 4),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.money_outlined,
                                          color: Colors.black,
                                          size: 15,
                                        ),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        Text(
                                          'Price: ${produkToko[index].product_price}',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        TextButton(
                                          onPressed: () => _showModalEdit(),
                                          child: Text(
                                            "Edit",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14),
                                          ),
                                          style: TextButton.styleFrom(
                                            backgroundColor: Colors.green[900],
                                          ),
                                        ),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 10.0)),
                                        TextButton(
                                          onPressed: () async {
                                            if (await confirm(
                                              context,
                                              title: const Text('Confirm'),
                                              content: const Text(
                                                  'Would you like to remove?'),
                                              textOK: const Text('Yes'),
                                              textCancel: const Text('No'),
                                            )) {
                                              return print('pressedOK');
                                            }
                                            return print('pressedCancel');
                                          },
                                          child: Text(
                                            "Delete",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14),
                                          ),
                                          style: TextButton.styleFrom(
                                            backgroundColor: Colors.red[900],
                                          ),
                                        ),
                                      ],
                                    ),
                                    /*
                                            SizedBox(height: 4),
                                            Text(
                                              'Overview: ',
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 3,
                                            ),
                                            */
                                  ]),
                            )),
                            Container()
                          ],
                        ),
                      )
                    ]),
                  ),
                ),
                decoration: new BoxDecoration(
                  boxShadow: [
                    new BoxShadow(
                        color: Colors.grey,
                        blurRadius: 15.0,
                        offset: Offset(0.0, 0.75)),
                  ],
                ),
              );
            }));
  }
}
