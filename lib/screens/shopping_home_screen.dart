import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/l10n/app_localizations.dart';
import '../models/product.dart';
import '../widgets/product_card.dart';
import '../widgets/hot_offer_item.dart';

class ShoppingHomeScreen extends StatefulWidget {
  const ShoppingHomeScreen({super.key});

  @override
  State<ShoppingHomeScreen> createState() => _ShoppingHomeScreenState();
}

class _ShoppingHomeScreenState extends State<ShoppingHomeScreen> {
  final PageController _pageController = PageController();
  
  final List<Product> products = [
    Product(
      id: '1',
      title: 'Wireless Headphones',
      imageUrl: 'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=300',
    ),
    Product(
      id: '2',
      title: 'Smart Watch',
      imageUrl: 'https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=300',
    ),
    Product(
      id: '3',
      title: 'Laptop Computer',
      imageUrl: 'https://images.unsplash.com/photo-1496181133206-80ce9b88a853?w=300',
    ),
    Product(
      id: '4',
      title: 'Smartphone',
      imageUrl: 'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?w=300',
    ),
    Product(
      id: '5',
      title: 'Gaming Console',
      imageUrl: 'https://images.unsplash.com/photo-1606144042614-b2417e99c4e3?w=300',
    ),
    Product(
      id: '6',
      title: 'Tablet Device',
      imageUrl: 'https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0?w=300',
    ),
  ];

  final List<Map<String, String>> hotOffers = [
    {
      'image': 'https://images.unsplash.com/photo-1560472354-b33ff0c44a43?w=300',
      'description': '50% Off on Electronics - Limited Time Offer!'
    },
    {
      'image': 'https://images.unsplash.com/photo-1441986300917-64674bd600d8?w=300',
      'description': 'Buy 2 Get 1 Free on Fashion Items'
    },
    {
      'image': 'https://images.unsplash.com/photo-1472851294608-062f824d29cc?w=300',
      'description': 'Free Shipping on Orders Above \$50'
    },
    {
      'image': 'https://images.unsplash.com/photo-1556742049-0cfed4f6a45d?w=300',
      'description': 'Weekend Special: 30% Off Home Decor'
    },
    {
      'image': 'https://images.unsplash.com/photo-1434389677669-e08b4cac3105?w=300',
      'description': 'Flash Sale: Up to 70% Off Selected Items'
    },
  ];

  void _addToCart(Product product) {
    final localizations = AppLocalizations.of(context)!;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          localizations.itemAddedToCart,
          style: const TextStyle(fontFamily: 'Suwannaphum'),
        ),
        backgroundColor: Colors.green,
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    
    return Scaffold(
      appBar: AppBar(
        title: Text(
          localizations.ourProducts,
          style: const TextStyle(
            fontFamily: 'Suwannaphum',
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.deepPurple,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Featured Products PageView
            SizedBox(
              height: 200,
              child: PageView.builder(
                controller: _pageController,
                itemCount: products.take(3).length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return Container(
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: NetworkImage(product.imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Colors.black.withOpacity(0.7),
                            Colors.transparent,
                          ],
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Text(
                            product.title,
                            style: const TextStyle(
                              fontFamily: 'Suwannaphum',
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            
            const SizedBox(height: 20),
            
            // Products Grid
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return ProductCard(
                    product: products[index],
                    onAddToCart: () => _addToCart(products[index]),
                  );
                },
              ),
            ),
            
            const SizedBox(height: 30),
            
            // Hot Offers Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                localizations.hotOffers,
                style: const TextStyle(
                  fontFamily: 'Suwannaphum',
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
            ),
            
            const SizedBox(height: 16),
            
            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: hotOffers.length,
                itemBuilder: (context, index) {
                  return HotOfferItem(
                    imageUrl: hotOffers[index]['image']!,
                    description: hotOffers[index]['description']!,
                  );
                },
              ),
            ),
            
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
