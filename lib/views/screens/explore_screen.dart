import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceryshop/controllers/search_controller.dart';
import 'package:groceryshop/data/category_data.dart';
import 'package:groceryshop/views/screens/product_view_screen.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  SearchControllers searchController = Get.put(SearchControllers());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: const Text(
          "Find Products",
          style: TextStyle(
            fontFamily: "Gilroy",
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            TextFormField(
              style: const TextStyle(
                fontFamily: "Inter",
                color: Colors.black,
                fontSize: 16,
              ),
              controller: searchController.searchController,
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xfff2f3f2),
                prefixIcon: const Icon(Icons.search),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(8),
                ),
                hintText: "Search Store",
                hintStyle: const TextStyle(
                  fontFamily: "Inter",
                  color: Colors.grey,
                  fontSize: 16,
                ),
                contentPadding:
                    const EdgeInsets.only(top: 15, bottom: 15, left: 20),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
           
            const SizedBox(height: 20),
            Expanded(
              flex: 1,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  mainAxisExtent: 189.88,
                ),
                itemCount: categorydata.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: categorydata[index]['color'],
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: categorydata[index]['border']),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: InkWell(
                        onTap: () {
                          Get.to(
                            const ProductViewScreen(),
                            arguments: {
                              "category": categorydata[index]['title']
                            },
                            transition: Transition.noTransition,
                          );
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(categorydata[index]['image']),
                            Text(
                              categorydata[index]['title'],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontFamily: "Gilroy",
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
