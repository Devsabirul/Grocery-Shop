import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceryshop/constants.dart';
import 'package:groceryshop/controllers/search_controller.dart';
import 'package:groceryshop/views/screens/product_details_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  SearchControllers searchController = Get.put(SearchControllers());
  PageController pageController = PageController(initialPage: 0);
  RxInt currentIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 15),
                Align(
                  child: Image.asset(
                    "assets/images/home-top.png",
                  ),
                ),
                const SizedBox(height: 5),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 25,
                      color: Color(0xff393636),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Dhaka, Banassre",
                      style: TextStyle(
                        fontFamily: "Gilroy",
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Color(0xff4C4F4D),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
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
                
                const SizedBox(height: 15),
                // ---------------------- banner section Start ----------------
                Container(
                  width: Get.width,
                  height: 114.99,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: PageView.builder(
                    controller: pageController,
                    itemCount: 3,
                    onPageChanged: currentIndex.call,
                    itemBuilder: (context, index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          "assets/images/banner1.png",
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 10),
                Row(
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
                // ---------------------- banner section End ---------------------------
                // ---------------------- Exclusive Offer Section Start ----------------
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Exclusive Offer",
                      style: TextStyle(
                        fontFamily: "Gilroy",
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: textDarkColor,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        "See all",
                        style: TextStyle(
                          fontFamily: "Gilroy",
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: primaryColor,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 15),

                // --------------------- product start --------------------
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        width: 173.32,
                        height: 248.51,
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                height: 125,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(18),
                                  child: Image.asset(
                                    "assets/images/bananas.png",
                                    width: 120,
                                    fit: BoxFit.contain,
                                  ),
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
                                    onTap: (){
                                      Get.to(const ProductDetailsView(),transition: Transition.noTransition);
                                    },
                                    child: const Text(
                                      "Organic Bananas",
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                      ),
                      Container(
                        width: 173.32,
                        height: 248.51,
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                height: 125,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(18),
                                  child: Image.asset(
                                    "assets/images/apple.png",
                                    width: 120,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12.0, vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Red Apple",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontFamily: "Gilroy",
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: textDarkColor,
                                    ),
                                  ),
                                  Text(
                                    "1kg, Priceg",
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                      ),
                      Container(
                        width: 173.32,
                        height: 248.51,
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                height: 125,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(18),
                                  child: Image.asset(
                                    "assets/images/bananas.png",
                                    width: 120,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12.0, vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Organic Bananas",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontFamily: "Gilroy",
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: textDarkColor,
                                    ),
                                  ),
                                  Text(
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                      ),
                    ],
                  ),
                ),

                // ---------------------- Exclusive Offer Section End ------------------
                // ---------------------- Best Selling Section Start ----------------
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Best Selling",
                      style: TextStyle(
                        fontFamily: "Gilroy",
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: textDarkColor,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        "See all",
                        style: TextStyle(
                          fontFamily: "Gilroy",
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: primaryColor,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 15),
                // --------------------- product start --------------------
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        width: 173.32,
                        height: 248.51,
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                height: 125,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(18),
                                  child: Image.asset(
                                    "assets/images/morich.png",
                                    width: 120,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12.0, vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Bombay Morich",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontFamily: "Gilroy",
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: textDarkColor,
                                    ),
                                  ),
                                  Text(
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                      ),
                      Container(
                        width: 173.32,
                        height: 248.51,
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                height: 125,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(18),
                                  child: Image.asset(
                                    "assets/images/pngfuel3.png",
                                    width: 120,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12.0, vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Orginal Ginger",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontFamily: "Gilroy",
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: textDarkColor,
                                    ),
                                  ),
                                  Text(
                                    "1kg, Priceg",
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                      ),
                      Container(
                        width: 173.32,
                        height: 248.51,
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                height: 125,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(18),
                                  child: Image.asset(
                                    "assets/images/bananas.png",
                                    width: 120,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12.0, vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Organic Bananas",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontFamily: "Gilroy",
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: textDarkColor,
                                    ),
                                  ),
                                  Text(
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                      ),
                    ],
                  ),
                ),

                // ---------------------- Best Selling Section End ------------------
                // ---------------------- Groceries Section Start ----------------
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Groceries",
                      style: TextStyle(
                        fontFamily: "Gilroy",
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: textDarkColor,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        "See all",
                        style: TextStyle(
                          fontFamily: "Gilroy",
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: primaryColor,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 8),

                // --------------------- product start --------------------
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        width: 248.19,
                        height: 105,
                        margin: const EdgeInsets.only(right: 15),
                        decoration: BoxDecoration(
                          color: const Color(0xfffef1e4),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            children: [
                              Image.asset("assets/images/grocery1.png"),
                              const SizedBox(width: 20),
                              const Text(
                                "Pulses",
                                style: TextStyle(
                                  fontFamily: "Gilroy",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: textDarkColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 248.19,
                        height: 105,
                        margin: const EdgeInsets.only(right: 15),
                        decoration: BoxDecoration(
                          color: const Color(0xffe5f3ea),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            children: [
                              Image.asset("assets/images/rice.png"),
                              const SizedBox(width: 20),
                              const Text(
                                "Organic Rice",
                                style: TextStyle(
                                  fontFamily: "Gilroy",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: textDarkColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 248.19,
                        height: 105,
                        margin: const EdgeInsets.only(right: 15),
                        decoration: BoxDecoration(
                          color: const Color(0xfffef1e4),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            children: [
                              Image.asset("assets/images/grocery1.png"),
                              const SizedBox(width: 20),
                              const Text(
                                "Pulses",
                                style: TextStyle(
                                  fontFamily: "Gilroy",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: textDarkColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        width: 173.32,
                        height: 248.51,
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                height: 125,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(18),
                                  child: Image.asset(
                                    "assets/images/morich.png",
                                    width: 120,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12.0, vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Bombay Morich",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontFamily: "Gilroy",
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: textDarkColor,
                                    ),
                                  ),
                                  Text(
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                      ),
                      Container(
                        width: 173.32,
                        height: 248.51,
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                height: 125,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(18),
                                  child: Image.asset(
                                    "assets/images/pngfuel3.png",
                                    width: 120,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12.0, vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Orginal Ginger",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontFamily: "Gilroy",
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: textDarkColor,
                                    ),
                                  ),
                                  Text(
                                    "1kg, Priceg",
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                      ),
                      Container(
                        width: 173.32,
                        height: 248.51,
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                height: 125,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(18),
                                  child: Image.asset(
                                    "assets/images/bananas.png",
                                    width: 120,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12.0, vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Organic Bananas",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontFamily: "Gilroy",
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: textDarkColor,
                                    ),
                                  ),
                                  Text(
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                // ---------------------- Groceries Section End ------------------
              ],
            ),
          ),
        ),
      ),
    );
  }
}
