import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceryshop/constants.dart';
import 'package:groceryshop/data/profileinfo/profile_info.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 33,
                            backgroundImage: NetworkImage(
                                'https://play-lh.googleusercontent.com/7Ak4Ye7wNUtheIvSKnVgGL_OIZWjGPZNV6TP_3XLxHC-sDHLSE45aDg41dFNmL5COA=w240-h480-rw'),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Shishir Islam Shanto",
                                style: TextStyle(
                                  fontFamily: "Gilroy",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "shishir@gmail.com",
                                style: TextStyle(
                                  fontFamily: "Gilroy",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Color(0xff7C7C7C),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        elevation: 0,
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.edit,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Edit",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  "Account",
                  style: TextStyle(
                    fontFamily: "Gilroy",
                    fontSize: 16,
                    color: Colors.grey.withOpacity(0.5),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: account.map((item) {
                  return InkWell(
                    onTap: () {
                      Get.to(item['action'],
                          transition: Transition.noTransition);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 18, horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            child: Row(
                              children: [
                                Image.asset(
                                  item['icon'].toString(),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  item['title'].toString(),
                                  style: const TextStyle(
                                    fontFamily: "Gilroy",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: Color(0xff181725),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Get.to(item['action'],
                                  transition: Transition.noTransition);
                            },
                            child: const Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xff000000),
                              size: 25,
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: Get.width,
                    height: 63,
                    decoration: BoxDecoration(
                      color: const Color(0xffF2F3F2),
                      borderRadius: BorderRadius.circular(19),
                    ),
                    child: const Center(
                      child: Text(
                        "Logout",
                        style: TextStyle(
                          fontFamily: "Gilroy",
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: primaryColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
