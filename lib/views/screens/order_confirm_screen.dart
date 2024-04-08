import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceryshop/constants.dart';
import 'package:groceryshop/main_screen.dart';

class OrderConfirmScreen extends StatefulWidget {
  const OrderConfirmScreen({super.key});

  @override
  State<OrderConfirmScreen> createState() => _OrderConfirmScreenState();
}

class _OrderConfirmScreenState extends State<OrderConfirmScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 20),
                    child: Image.asset("assets/images/orderimg.png"),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    "Your Order has been accepted",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Gilroy",
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: textDarkColor,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "your order has been praced and is on \n is't way to being prossed",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Gilroy",
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff7C7C7C),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: Get.width,
                    height: 60,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(19),
                    ),
                    child: const Center(
                      child: Text(
                        "Track Order",
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
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    Get.off(const MainScreen(),transition: Transition.noTransition);
                  },
                  child: Container(
                    width: Get.width,
                    height: 60,
                    decoration: BoxDecoration(
                      color: const Color(0xffF2F3F2),
                      borderRadius: BorderRadius.circular(19),
                    ),
                    child: const Center(
                      child: Text(
                        "Back",
                        style: TextStyle(
                          fontFamily: "Gilroy",
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
