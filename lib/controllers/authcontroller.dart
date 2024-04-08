
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class AuthController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  RxBool isLoading = false.obs;
  RxBool isLoggedIn = false.obs;
  RxString usernamevalue = "".obs;
  RxString userfirstname = "".obs;

  clearfield() {
    nameController.clear();
    userNameController.clear();
    passwordController.clear();
    confirmPasswordController.clear();
  }
}
