import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iti_final/screens/home_page/product_model.dart';
import 'package:iti_final/screens/home_page/product_provider.dart';

class CategoriesContent extends StatefulWidget {

  List<Product> productsList;
  CategoriesContent({required this.productsList});

  @override
  State<CategoriesContent> createState() => _HomePageChatState();
}

class _HomePageChatState extends State<CategoriesContent> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: widget.productsList.length,
              itemBuilder: (context, index) {
                return Row(children: [
                  buildStackIcon(
                      thump: widget.productsList[index].thumbnail),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${widget.productsList[index].title}",
                          style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 17),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          "${widget.productsList[index].description}",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: TextStyle(color: Colors.grey,fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("${widget.productsList[index].price}\$")
                ]);
              },
              separatorBuilder: (context, idx) => SizedBox(
                height: 15,
              ),
            ),
          ),
        ],
      ),
    );
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
}
