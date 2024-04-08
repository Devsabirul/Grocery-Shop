import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceryshop/constants.dart';
import 'package:groceryshop/controllers/product_controller.dart';
import 'package:groceryshop/views/screens/order_confirm_screen.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  ProductManageController controller = Get.put(ProductManageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        scrolledUnderElevation: 1,
        elevation: 1,
        backgroundColor: Colors.white,
        shadowColor: Colors.grey,
        centerTitle: true,
        title: const Text(
          "My Cart",
          style: TextStyle(
            fontFamily: "Gilroy",
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 15),
                      height: 110,
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.grey,
                            width: 0.7,
                          ),
                        ),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: SizedBox(
                              width: 70.43,
                              height: 64.69,
                              child: Image.asset(
                                "assets/images/cartimg1.png",
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Bell Pepper Red",
                                      style: TextStyle(
                                        fontFamily: "Gilroy",
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      "1kg, price",
                                      style: TextStyle(
                                        fontFamily: "Gilroy",
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  width: 119.67,
                                  height: 45.66,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                          borderRadius:
                                              BorderRadius.circular(17),
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
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: const Icon(
                                    Icons.close,
                                    size: 28,
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(bottom: 18),
                                  child: const Text(
                                    "\$4.00",
                                    style: TextStyle(
                                      fontFamily: "Gilroy",
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: textDarkColor,
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
                      margin: const EdgeInsets.only(bottom: 15),
                      height: 110,
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.grey,
                            width: 0.7,
                          ),
                        ),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: SizedBox(
                              width: 70.43,
                              height: 64.69,
                              child: Image.asset(
                                "assets/images/apple.png",
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Egg Pepper Red",
                                      style: TextStyle(
                                        fontFamily: "Gilroy",
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      "1kg, price",
                                      style: TextStyle(
                                        fontFamily: "Gilroy",
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  width: 119.67,
                                  height: 45.66,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                          borderRadius:
                                              BorderRadius.circular(17),
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
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: const Icon(
                                    Icons.close,
                                    size: 28,
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(bottom: 18),
                                  child: const Text(
                                    "\$5.05",
                                    style: TextStyle(
                                      fontFamily: "Gilroy",
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: textDarkColor,
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
            ),
            InkWell(
              onTap: () {
                _showBottomSheet(context);
              },
              child: Container(
                width: Get.width,
                height: 60,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(19),
                ),
                child: const Center(
                  child: Text(
                    "Go To Checkout",
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

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          width: Get.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, top: 20, right: 20, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Checkout',
                          style: TextStyle(
                            fontFamily: "Gilroy",
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: textDarkColor,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.close,
                            size: 28,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 25, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Delivery',
                          style: TextStyle(
                            fontFamily: "Gilroy",
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff7C7C7C),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'Select Method',
                              style: TextStyle(
                                fontFamily: "Gilroy",
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: textDarkColor,
                              ),
                            ),
                            SizedBox(width: 10),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 20,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20.0, right: 20, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Payments',
                          style: TextStyle(
                            fontFamily: "Gilroy",
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff7C7C7C),
                          ),
                        ),
                        Row(
                          children: [
                            Image.asset("assets/icons/card icon.png"),
                            const SizedBox(width: 10),
                            const Icon(
                              Icons.arrow_forward_ios,
                              size: 20,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 20, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Promo Code',
                          style: TextStyle(
                            fontFamily: "Gilroy",
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff7C7C7C),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'Pick discount',
                              style: TextStyle(
                                fontFamily: "Gilroy",
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: textDarkColor,
                              ),
                            ),
                            SizedBox(width: 10),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 20,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 20, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Total Cost',
                          style: TextStyle(
                            fontFamily: "Gilroy",
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff7C7C7C),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              '\$125.00',
                              style: TextStyle(
                                fontFamily: "Gilroy",
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: textDarkColor,
                              ),
                            ),
                            SizedBox(width: 10),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 20,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: InkWell(
                  onTap: () {
                    Get.off(const OrderConfirmScreen(),transition: Transition.noTransition);
                  },
                  child: Container(
                    width: Get.width,
                    height: 60,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(19),
                    ),
                    child: const Center(
                      child: Text(
                        "Place Order",
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
        );
      },
    );
  }
}
