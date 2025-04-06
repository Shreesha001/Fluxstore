import 'package:flutter/material.dart';
import 'package:fluxstore/model/product_model.dart';
import 'package:fluxstore/widgets/banner_carousel.dart';
import 'package:fluxstore/widgets/category_with_images.dart';
import 'package:fluxstore/widgets/product_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> bannerImages = [
    'assets/images/banners/banner.jpg',
    'assets/images/banners/banner2.png',
    'assets/images/banners/banner1.png',
  ];

  final List<Product> products = [
    Product(
      name: 'Summer T-Shirt',
      price: '\$24.99',
      imagePath: 'assets/images/products/product1.jpg',
    ),
    Product(
      name: 'Casual Shorts',
      price: '\$19.99',
      imagePath: 'assets/images/products/product2.jpg',
    ),
    Product(
      name: 'Beach Dress',
      price: '\$34.99',
      imagePath: 'assets/images/products/product3.jpg',
    ),
    Product(
      name: 'Denim Jacket',
      price: '\$49.99',
      imagePath: 'assets/images/products/product4.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            floating: true,
            pinned: true,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/logo.jpg', height: 40),
                const SizedBox(width: 7),
                const Text("FluxStore"),
              ],
            ),
            centerTitle: true,
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 110,
              color: Colors.white,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 5),
                children: [
                  const CategoryWithImage(
                    label: 'Men',
                    imagePath: 'assets/images/category/men.png',
                  ),
                  const CategoryWithImage(
                    label: 'Women',
                    imagePath: 'assets/images/category/women.png',
                  ),
                  const CategoryWithImage(
                    label: 'Clothing',
                    imagePath: 'assets/images/category/clothing.png',
                  ),
                  const CategoryWithImage(
                    label: 'Posters',
                    imagePath: 'assets/images/category/posters.png',
                  ),
                  const CategoryWithImage(
                    label: 'Music',
                    imagePath: 'assets/images/category/music.png',
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(child: BannerCarousel(bannerImages: bannerImages)),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images/banners/banner1.jpg',
                  fit: BoxFit.cover,
                  height: 180,
                  width: double.infinity,
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 0.7,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) => ProductCard(product: products[index]),
                childCount: products.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
