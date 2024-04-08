import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceryshop/constants.dart';
import 'package:groceryshop/controllers/product_controller.dart';

class ProductDetailsView extends StatefulWidget {
  const ProductDetailsView({super.key});

  @override
  State<ProductDetailsView> createState() => _ProductDetailsViewState();
}

class _ProductDetailsViewState extends State<ProductDetailsView> {
  ProductManageController controller = Get.put(ProductManageController());
  PageController pageController = PageController(initialPage: 0);
  RxInt currentIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: const Color(0xffF2F3F2),
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: const Icon(
              Icons.file_download_outlined,
              size: 28,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: Get.width,
                      height: 299,
                      decoration: const BoxDecoration(
                        color: Color(0xffF2F3F2),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25),
                        ),
                      ),
                      child: PageView.builder(
                        controller: pageController,
                        onPageChanged: currentIndex.call,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              margin: const EdgeInsets.only(top: 15),
                              child: Image.asset(
                                "assets/images/applebig.png",
                                width: 329,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 280,
                      width: Get.width,
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            3,
                            (index) => Obx(
                              () => Container(
                                height: 6,
                                width: currentIndex.value == index ? 16 : 6,
                                margin: const EdgeInsets.only(right: 6),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: currentIndex.value == index
                                      ? primaryColor
                                      : const Color(0xffD6D6D6),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Organic Red Apple",
                                style: TextStyle(
                                  fontFamily: "Gilroy",
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "1kg, Price",
                                style: TextStyle(
                                  fontFamily: "Gilroy",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff7C7C7C),
                                ),
                              ),
                            ],
                          ),
                          InkWell(
                            onTap: () {},
                            child: const Icon(
                              Icons.favorite_border_outlined,
                              size: 28,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 119.67,
                            height: 45.66,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () {
                                    controller.decrement();
                                  },
                                  child: const Icon(
                                    Icons.horizontal_rule,
                                    color: Color(0xffB3B3B3),
                                    size: 30,
                                  ),
                                ),
                                Container(
                                  width: 45.67,
                                  height: 45.67,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(17),
                                    border: Border.all(
                                      color: const Color(0xffB3B3B3),
                                      width: .5,
                                    ),
                                  ),
                                  child: Obx(
                                    () => Center(
                                      child: Text(
                                        controller.quantity.toString(),
                                        style: const TextStyle(
                                          fontFamily: "Gilroy",
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: textDarkColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    controller.increment();
                                  },
                                  child: const Icon(
                                    Icons.add,
                                    color: Color(0xffB3B3B3),
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Text(
                            "\$4.00",
                            style: TextStyle(
                              fontFamily: "Gilroy",
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: textDarkColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const ExpansionTile(
                  childrenPadding:
                      EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20),
                  title: Text(
                    "Product Details",
                    style: TextStyle(
                      fontFamily: "Gilroy",
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff181725),
                    ),
                  ),
                  children: [
                    Text(
                      "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
                      style: TextStyle(
                        fontFamily: "Gilroy",
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const ExpansionTile(
                  collapsedBackgroundColor: Colors.white,
                  childrenPadding:
                      EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20),
                  title: Text(
                    "Nutrition",
                    style: TextStyle(
                      fontFamily: "Gilroy",
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff181725),
                    ),
                  ),
                  children: [
                    Text(
                      "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
                      style: TextStyle(
                        fontFamily: "Gilroy",
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const ExpansionTile(
                  collapsedBackgroundColor: Colors.white,
                  expandedAlignment: Alignment.centerLeft,
                  childrenPadding:
                      EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20),
                  title: Text(
                    "Reviews",
                    style: TextStyle(
                      fontFamily: "Gilroy",
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff181725),
                    ),
                  ),
                  children: [
                    Text(
                      "Apples are nutritious.",
                      style: TextStyle(
                        fontFamily: "Gilroy",
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
              child: InkWell(
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
                      "Add To Basket",
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
            ),
          
          ],
        ),
      ),
    );
  }
}
