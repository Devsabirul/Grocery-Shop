import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceryshop/constants.dart';
import 'package:groceryshop/views/screens/filter_screen.dart';
import 'package:groceryshop/views/screens/product_details_screen.dart';

class ProductViewScreen extends StatefulWidget {
  const ProductViewScreen({super.key});

  @override
  State<ProductViewScreen> createState() => _ProductViewScreenState();
}

class _ProductViewScreenState extends State<ProductViewScreen> {
  @override
  Widget build(BuildContext context) {
    // Get the arguments passed from the previous screen
    final Map<String, dynamic> args = Get.arguments;

    // Extract the "category" argument
    final String category = args['category'];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        scrolledUnderElevation: 0,
        titleSpacing: 0,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
        title: Text(
          category.toString(),
          style: const TextStyle(
            fontFamily: "Gilroy",
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              Get.to(const FilterScreen(), transition: Transition.noTransition);
            },
            child: Image.asset("assets/images/filter.png"),
          ),
          const SizedBox(width: 15),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  mainAxisExtent: 260.51,
                ),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            margin: const EdgeInsets.only(top: 15),
                            height: 120,
                            child: Image.asset(
                              "assets/images/pngfuel 11.png",
                              width: 120,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12.0, vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap: () {
                                  Get.to(const ProductDetailsView(),
                                      transition: Transition.noTransition);
                                },
                                child: const Text(
                                  "Diet Coke",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontFamily: "Gilroy",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: textDarkColor,
                                  ),
                                ),
                              ),
                              const Text(
                                "7pcs, Priceg",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontFamily: "Gilroy",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: textLightColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, right: 10, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                "\$4.99",
                                style: TextStyle(
                                  fontFamily: "Gilroy",
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: textDarkColor,
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  width: 45,
                                  height: 45,
                                  decoration: BoxDecoration(
                                    color: primaryColor,
                                    borderRadius: BorderRadius.circular(17),
                                  ),
                                  child: const Icon(
                                    Icons.add,
                                    size: 30,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
