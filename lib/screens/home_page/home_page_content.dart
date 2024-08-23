import 'package:flutter/material.dart';
import 'package:iti_final/screens/home_page/product_model.dart';
import 'package:iti_final/screens/home_page/product_provider.dart';

class HomePageContent extends StatefulWidget {
  @override
  State<HomePageContent> createState() => _HomePageContentState();
}

class _HomePageContentState extends State<HomePageContent> {
  late Future<List<Product>> _futureProducts;

  @override
  void initState() {
    super.initState();
    _futureProducts = products(); // Initialize the future in initState
  }

  Future<List<Product>> products() async {
    return await productProvider();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Product>>(
      future: _futureProducts,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // Show a loading indicator while waiting for the data
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          // Handle errors if the data fetch failed
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (snapshot.hasData) {
          // Once the data is fetched, build the UI with the data
          List<Product> productsList = snapshot.data!;

          return ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: productsList.length,
                  itemBuilder: (context, index) {
                    return Row(children: [
                      buildStackIcon(thump: productsList[index].thumbnail),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${productsList[index].title}",
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              "${productsList[index].description}",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style:
                              const TextStyle(color: Colors.grey, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text("${productsList[index].price}\$")
                    ]);
                  },
                  separatorBuilder: (context, idx) => const SizedBox(
                    height: 15,
                  ),
                ),
              ),
            ],
          );
        } else {
          // Handle cases where there's no data
          return Center(child: Text("No products available."));
        }
      },
    );
  }
}

buildStackIcon({required String? thump}) {
  return ClipOval(
    child: Image.network(
      thump!,
      width: 70,
      height: 70,
      fit: BoxFit.cover,
    ),
  );
}
