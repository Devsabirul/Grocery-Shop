import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceryshop/constants.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  List categoriesList = [
    {
      "id": 0,
      "value": false,
      "title": "Eggs",
    },
    {
      "id": 1,
      "value": false,
      "title": "Noodles & Pasta",
    },
    {
      "id": 2,
      "value": false,
      "title": "Chips & Crisps",
    },
    {
      "id": 3,
      "value": false,
      "title": "Fast Food",
    },
  ];

  List brandList = [
    {
      "id": 0,
      "value": false,
      "title": "Eggs",
    },
    {
      "id": 1,
      "value": false,
      "title": "Noodles & Pasta",
    },
    {
      "id": 2,
      "value": false,
      "title": "Chips & Crisps",
    },
    {
      "id": 3,
      "value": false,
      "title": "Fast Food",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        scrolledUnderElevation: 0,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Icon(Icons.close),
        ),
        title: const Text(
          "Filters",
          style: TextStyle(
            fontFamily: "Gilroy",
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        decoration: const BoxDecoration(
          color: Color(0xfff2f3f2),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Categories",
                  style: TextStyle(
                    fontFamily: "Gilroy",
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  children: List.generate(
                    categoriesList.length,
                    (index) => CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      contentPadding: EdgeInsets.zero,
                      activeColor: primaryColor,
                      dense: true,
                      title: Text(
                        categoriesList[index]["title"],
                        style: const TextStyle(
                          fontFamily: "Gilroy",
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      value: categoriesList[index]["value"],
                      onChanged: (value) {
                        setState(() {
                          categoriesList[index]["value"] = value;
                        });
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Brand",
                  style: TextStyle(
                    fontFamily: "Gilroy",
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  children: List.generate(
                    brandList.length,
                    (index) => CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      contentPadding: EdgeInsets.zero,
                      activeColor: primaryColor,
                      dense: true,
                      title: Text(
                        brandList[index]["title"],
                        style: const TextStyle(
                          fontFamily: "Gilroy",
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      value: brandList[index]["value"],
                      onChanged: (value) {
                        setState(() {
                          brandList[index]["value"] = value;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: Get.width,
                height: 63,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(19),
                ),
                child: const Center(
                  child: Text(
                    "Apply Filter",
                    style: TextStyle(
                      fontFamily: "Gilroy",
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
