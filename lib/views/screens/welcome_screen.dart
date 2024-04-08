import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceryshop/constants.dart';
import 'package:groceryshop/views/screens/accounts/loginscreen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: Get.width,
            height: Get.height,
            child: Image.asset(
              "assets/images/welcome.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: Get.width,
            height: Get.height,
            color: Colors.black.withOpacity(0.25),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Center(
                  child: Image.asset("assets/images/wlclogo.png"),
                ),
                const SizedBox(height: 15),
                const Center(
                  child: Text(
                    "Welcome to our store",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Gilroy",
                      fontSize: 48,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      height: 1,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Center(
                  child: Text(
                    "Ger your groceries in as fast as one hour",
                    style: TextStyle(
                      fontFamily: "Gilroy",
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffFCFCFC),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                  child: InkWell(
                    onTap: () {
                      Get.to(const LoginScreen(),
                          transition: Transition.noTransition);
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
                          "Get Started",
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
        ],
      ),
    );
  }
}
