import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Details ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductDetailPage(),
    );
  }
}

class Product {
  final String name;
  final String description;
  final String imageUrl;
  final double price;
  final double rating;

  Product({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.price,
    required this.rating,
  });
}

class ProductDetailPage extends StatefulWidget {
  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  // Sample product
  final Product product = Product(
    name: 'copule watch',
    description:
        'This is a beautiful watch. the black colour is eligent. It is a high-quality product that offers amazing features for the price.',
    imageUrl: 'https://retailbd.com/wp-content/uploads/2018/08/BY51K.jpg',
    price: 29.99,
    rating: 4.5,
  );

  // Cart list to keep track of added products
  List<Product> cart = [];

  // Function to add product to cart
  void addToCart(Product product) {
    setState(() {
      cart.add(product);
    });
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('${product.name} added to cart!'),
    ));
  }

  // Function to handle "Buy Now" action
  void buyNow(Product product) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('Proceeding to checkout for ${product.name}'),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Detail'),
        actions: [
          // Cart button in the app bar, showing number of items in the cart
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text("Your Cart"),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (cart.isEmpty)
                          Text("Your cart is empty.")
                        else
                          Column(
                            children: cart
                                .map((product) => Text(product.name))
                                  .toList(),
                          )
                      ],
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("Close"),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product Image
            Image.network(
              product.imageUrl,
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16),

            // Product Name
            Text(
              product.name,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),

            // Product Rating
            Row(
              children: [
                Icon(Icons.star, color: Colors.orange, size: 20),
                SizedBox(width: 4),
                Text(
                  '${product.rating} / 5.0',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            SizedBox(height: 16),

            // Product Price
            Text(
              '\$${product.price}',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 16),

            // Product Description
            Text(
              product.description,
              style: TextStyle(fontSize: 16),
            ),
            Spacer(),

            // Action Buttons (Buy Now & Add to Cart)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Buy Now Button
                ElevatedButton(
                  onPressed: () {
                    buyNow(product);
                  },
                  child: Text('Buy Now'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                SizedBox(width: 20),

                // Add to Cart Button
                ElevatedButton(
                  onPressed: () {
                    addToCart(product);
                  },
                  child: Text('Add to Cart'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


