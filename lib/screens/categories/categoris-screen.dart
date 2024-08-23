import 'package:flutter/material.dart';
import 'package:iti_final/screens/categories/categories_content.dart';

import '../home_page/product_model.dart';
import '../home_page/product_provider.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(width: double.infinity,),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10,top: 20),
            child: GestureDetector(
              onTap: () async {
                List<Product> products =
                    await productCategoryProvider(category: "beauty");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (ctx) =>
                            CategoriesContent(productsList: products)));
              },
              child: Container(
                width: 300,
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.network(
                        "https://images.yourstory.com/cs/4/211ccaf00e6d11e997fe8f165dce9bb1/Imageifxu-1596799036123-1601633425902.jpg",
                        height: 150,
                      ),
                    ),
                    const Text(
                      "Beauty",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10,top: 20),
            child: GestureDetector(
              onTap: () async {
                List<Product> products =
                    await productCategoryProvider(category: "smartphones");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (ctx) =>
                            CategoriesContent(productsList: products)));
              },
              child: Container(
                width: 300,
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.network(
                        "https://img.baba-blog.com/2024/05/Flagship-Phones.jpg?x-oss-process=style%2Ffull",
                        height: 150,
                      ),
                    ),
                    const Text(
                      "SmartPhones",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10,top: 20),
            child: GestureDetector(
              onTap: () async {
                List<Product> products =
                    await productCategoryProvider(category: "motorcycle");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (ctx) =>
                            CategoriesContent(productsList: products)));
              },
              child: Container(
                width: 300,
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.network(
                        "https://hips.hearstapps.com/hmg-prod/images/po-motorcycles-index-1586887896.jpg",
                        height: 150,
                      ),
                    ),
                    const Text(
                      "motorcycle",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
