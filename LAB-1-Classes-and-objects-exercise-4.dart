/**
 * Exercise 4: Design a Product class with properties like name, price, and quantity. 
 * Implement a method to calculate the total cost of a product (price * quantity).
 */

class Product {
  String name;
  double price;
  int quantity;

  Product({required this.name, required this.price, required this.quantity});

  double calculateTotalCost() {
    return price * quantity;
  }
}

void main() {
  Product product = Product(name: 'Sanbusa', price: 45.0, quantity: 4);

  print('Product Name: ${product.name}');
  print('Price: ${product.price} birr');
  print('Quantity: ${product.quantity}');
  print('Total Cost: ${product.calculateTotalCost()} birr');
}
