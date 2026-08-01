class Product {
  int id;
  String name;
  double price;
  String category;
  bool isAvailable;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.category,
    required this.isAvailable,
  });

  @override
  String toString() {
    return 'Product(id: $id, name: $name, price: $price, category: $category, isAvailable: $isAvailable)';
  }
}

void main() {
  List<Product> products = [
    Product(
      id: 1,
      name: 'Laptop',
      price: 25000.0,
      category: 'Electronics',
      isAvailable: true,
    ),
    Product(
      id: 2,
      name: 'Book',
      price: 150.0,
      category: 'Education',
      isAvailable: true,
    ),
    Product(
      id: 3,
      name: 'Smartphone',
      price: 30000.0,
      category: 'Electronics',
      isAvailable: false,
    ),
    Product(
      id: 4,
      name: 'Headphones',
      price: 5000.0,
      category: 'Electronics',
      isAvailable: true,
    ),
    Product(
      id: 5,
      name: 'burger',
      price: 50.0,
      category: 'Food',
      isAvailable: true,
    ),
    Product(
      id: 6,
      name: 'dart Course',
      price: 200.0,
      category: 'Education',
      isAvailable: true,
    ),
  ];

  print('all Products');
  for (var product in products) {
    print(product);
  }

  List<Product> availableProducts = products
      .where((product) => product.isAvailable)
      .toList();
  print(' Available Products ');
  for (var product in availableProducts) {
    print(product);
  }

  List<String> productNames = products.map((product) => product.name).toList();
  print('Product Names (map) ');
  print(productNames);

  List<String> availableElectronics = products
      .where(
        (product) => product.isAvailable && product.category == 'Electronics',
      )
      .map((product) => product.name)
      .toList();
  print('Available Electronics Products');
  print(availableElectronics);

  double totalPrice = products.fold(0.0, (sum, product) => sum + product.price);
  print('Total Price of All Products  ');
  print(totalPrice);

  double availableTotal = products
      .where((product) => product.isAvailable)
      .fold(0.0, (sum, product) => sum + product.price);
  print('Total Price of Available Products ');
  print(availableTotal);

  bool hasExpensiveProduct = products.any((product) => product.price > 20000);
  print('Has product with price > 20000 ');
  print(hasExpensiveProduct);

  bool allAbove100 = products.every((product) => product.price > 100);
  print('All products have price > 100 ');
  print(allAbove100);

  Product firstElectronics = products.firstWhere(
    (product) => product.category == 'Electronics',
  );
  print('First Electronics Product ');
  print(firstElectronics);

  List<Product> sortedProducts = List.from(products);
  sortedProducts.sort((a, b) => a.price.compareTo(b.price));
  print('Products Sorted by Price');
  for (var product in sortedProducts) {
    print(product);
  }

  List<String> categories = ['Electronics', 'Education', 'Electronics', 'Food'];
  Set<String> uniqueCategories = categories.toSet();
  print('Unique Categories');
  print(uniqueCategories);
}
