import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:confirm_dialog/confirm_dialog.dart';
import 'homePage.dart';
// import 'list-user.dart';
import 'object/user.dart';

class listUser extends StatefulWidget {
  const listUser({super.key});

  @override
  State<listUser> createState() => _listUserState();
}

class _listUserState extends State<listUser> {
  FocusNode _focusNode = FocusNode();
  bool _isFocused = false;

  @override
  void initState() {
    _focusNode.addListener(() {
      onFocusChange();
    });
    super.initState();
  }

  void onFocusChange() {
    setState(() {
      _isFocused = !_isFocused;
    });
  }

  List<User> list_User = [
    User(
      user_name: "Yanto",
      user_id: "2014",
      user_img: "assets/images/cft.png",
    ),
    User(
      user_name: "Udin",
      user_id: "1000",
      user_img: "assets/images/casfet-white.png",
    ),
    User(
      user_name: "Bambang",
      user_id: "9000",
      user_img: "assets/images/cs-white.png",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // margin: const EdgeInsets.only(right: 10, left: 10, bottom: 10),
      scrollDirection: Axis.horizontal,
      // Title Text(),
      padding: EdgeInsets.all(20.0),
      child: DataTable(
          columns: <DataColumn>[
            DataColumn(
                label: Text("Foto"),
                onSort: (i, b) {
                  setState(() {
                    list_User.sort((a, b) => a.user_id.compareTo(b.user_id));
                  });
                }),
            DataColumn(
                label: Text("User ID"),
                onSort: (i, b) {
                  setState(() {
                    list_User.sort((a, b) => a.user_id.compareTo(b.user_id));
                  });
                }),
            DataColumn(
                label: Text("User Name"),
                onSort: (i, b) {
                  setState(() {
                    list_User
                        .sort((a, b) => a.user_name.compareTo(b.user_name));
                  });
                }),
            DataColumn(
                label: Text("Edit"),
                onSort: (i, b) {
                  setState(() {
                    list_User
                        .sort((a, b) => a.user_name.compareTo(b.user_name));
                  });
                }),
            DataColumn(
                label: Text("Delete"),
                onSort: (i, b) {
                  setState(() {
                    list_User
                        .sort((a, b) => a.user_name.compareTo(b.user_name));
                  });
                }),
          ],
          rows: list_User
              .map((user) => DataRow(cells: [
                    DataCell(
                      Image.asset(
                        user.user_img,
                        width: 20.0,
                        height: 20.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    DataCell(
                      Text(user.user_id),
                    ),
                    DataCell(
                      Text(user.user_name),
                    ),
                    DataCell(
                      IconButton(
                        icon: Icon(Icons.edit),
                        onPressed: () => _showModalEdit(),
                        color: Colors.green,
                      ),
                    ),
                    DataCell(
                      IconButton(
                        icon: Icon(Icons.delete),
                        color: Colors.red,
                        onPressed: () async {
                          if (await confirm(
                            context,
                            title: const Text('Confirm'),
                            content: const Text('Would you like to remove?'),
                            textOK: const Text('Yes'),
                            textCancel: const Text('No'),
                          )) {
                            return print('pressedOK');
                          }
                          return print('pressedCancel');
                        },
                      ),
                    )
                  ]))
              .toList()),
    );
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
                  hintText: "User ID",
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Username",
                ),
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
}
