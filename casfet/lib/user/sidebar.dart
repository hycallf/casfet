import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text('Home'),
      backgroundColor: Colors.blue.shade700,
    ),
    drawer: const NavigationDrawer(),
  );
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key)

  @override
  Widget build(BuildContext context) => Drawer(
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildHeader(context),
          buildMenuItems(context),
        ],
      ),
    ),
  );

  Widget buildHeader(BuildContext context) => Container(
    padding: EdgeInsets.only(
      top: MediaQuery.of(context).padding.top,
    ),
  );

  Widget buildMenuItems(BuildContext context) => Column(
    children: [
      ListTile(
        leading: const Icon(Icons.home_outlined),
        title: const Text('Home'),
        onTap: () {},
      ),
      ListTile(
        leading: const Icon(Icons.favorite_border),
        title: const Text('Favourites'),
        onTap: () {},
      ),
      ListTile(
        leading: const Icon(Icons.workspaces_outline),
        title: const Text('Workflow'),
        onTap: () {},
      ),
      ListTile(
        leading: const Icon(Icons.update),
        title: const Text('Updates'),
        onTap: () {},
      ),
      const Divider(color: Colors.black54), // Garis pemisah
      ListTile(
        leading: const Icon(Icons.account_tree_outlined),
        title: const Text('Plugins'),
        onTap: () {},
      ),
      ListTile(
        leading: const Icon(Icons.notifications_outlined),
        title: const Text('Notifications'),
        onTap: () {},
      ),
    ],
  );
}