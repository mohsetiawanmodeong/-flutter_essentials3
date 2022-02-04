import 'package:flutter/material.dart';

// ignore: todo
// TODO: Embedded List
class GoogleProducts {
  final List<String> items = [
    'Cloud Functions',
    'App Engine',
    'Kubernetes Engine',
    'Compute Engine',
    'Bare Metal',
    'Preemptible VMs',
    'Shielded VMs',
    'Sole-tenet Nodes',
    'VMWare Engine',
    'Cloud Firestore',
    'Cloud Storage',
    'Persistent Disk',
    'Local SSD',
    'Cloud Bigtable',
    'Cloud Firestore',
    'Cloud Memorystore',
    'Cloud Spanner',
  ];
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const title = 'Google Products';
    return const MaterialApp(
      title: title,
      debugShowCheckedModeBanner: false,
      home: ProductHomeWidget(title),
    );
  }
}

// ignore: todo
// TODO: ProductHomeWidget
class ProductHomeWidget extends StatelessWidget {
  final String title;
  const ProductHomeWidget(this.title, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: todo
      // TODO: Style the AppBar
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        // ignore: todo
        // TODO: Enable AppBarLeading
        leading: const AppBarLeading(),
        // ignore: todo
        // TODO: Enable AppBarLeading
        actions: const [
          AppBarActionsShare(),
        ],
        title: Text(title, style: const TextStyle(color: Colors.black)),
      ),
      // ignore: todo
      // TODO: Enable the ListView
      body: ProductListView(),
    );
  }
}

// ignore: todo
// TODO: AppBarLeading
class AppBarLeading extends StatelessWidget {
  const AppBarLeading({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const IconButton(
      icon: Icon(
        Icons.menu,
      ),
      onPressed: null,
    );
  }
}

// ignore: todo
// TODO: AppBarActionsShare
class AppBarActionsShare extends StatelessWidget {
  const AppBarActionsShare({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: const Icon(
          Icons.share,
        ),
        onPressed: () {
          const snackBar =
              SnackBar(content: Text('You selected the Share Action'));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        });
  }
}

// ignore: todo
// TODO: ProductListView
class ProductListView extends StatelessWidget {
  final googleProducts = GoogleProducts();
  ProductListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: googleProducts.items.length,
      itemBuilder: (context, index) {
        return ProductListTile(googleProducts.items[index]);
      },
    );
  }
}

// ignore: todo
// TODO: ProductListTile
class ProductListTile extends StatelessWidget {
  final String? productLabel;
  const ProductListTile(this.productLabel, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('$productLabel', style: const TextStyle(color: Colors.black)),
      subtitle: const Text('SubTitle', style: TextStyle(color: Colors.black)),
      leading: const Icon(Icons.help_center_outlined, color: Colors.black),
      // When the child is tapped, show a snackbar.
      onTap: () {
        // ignore: todo
        // TODO: Enable onTap
        final snackBar = SnackBar(content: Text('You selected $productLabel'));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        // ignore: todo
        // TODO: Navigation to the Details Page
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const MyDetails()),
        );
      },
    );
  }
}

// ignore: todo
// TODO: Add a details page
class MyDetails extends StatelessWidget {
  const MyDetails({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const title = 'Details Page';
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.grey, //change your color here
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        // leading: const AppBarLeading(),
        actions: const [
          AppBarActionsShare(),
        ],
        title: const Text(title, style: TextStyle(color: Colors.black)),
      ),
      // appBar: AppBar(
      //   title: const Text(title),
      // ),
      body: const Center(child: Text('Hello Details Page')),
    );
  }
}
