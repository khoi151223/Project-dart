import 'package:flutter/material.dart';

void main() {
  runApp(MyShoppingApp());
}

class MyShoppingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ShoppingHomePage(),
    );
  }
}

class ShoppingHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to the Shopping App!',
            ),
            RaisedButton(
              onPressed: () {
                // Navigate to product list page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProductListPage()),
                );
              },
              child: Text('View Products'),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Product 1'),
            subtitle: Text('Description of Product 1'),
            trailing: Text('\$100'),
          ),
          ListTile(
            title: Text('Product 2'),
            subtitle: Text('Description of Product 2'),
            trailing: Text('\$150'),
          ),
          // Add more products here
        ],
      ),
    );
  }
}
