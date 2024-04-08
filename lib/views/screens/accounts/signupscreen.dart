import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceryshop/constants.dart';
import 'package:groceryshop/controllers/authcontroller.dart';
import 'package:groceryshop/views/components/text_field_widget.dart';
import 'package:groceryshop/views/screens/accounts/loginscreen.dart';
import 'package:groceryshop/views/screens/welcome_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  AuthController controller = Get.put(AuthController());
  bool isPasswordHidden = true;
  bool isConfirmPasswordHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: InkWell(
          onTap: () {
            controller.clearfield();
            Get.off(const WelcomeScreen(),
                transition: Transition.noTransition);
          },
          child: const Icon(
            Icons.arrow_back,
          ),
        ),
        titleSpacing: 0,
        title: const Text(
          "Sign Up",
          style: TextStyle(
            fontFamily: "Inter",
            fontWeight: FontWeight.w700,
            fontSize: 16,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Form(
                key: controller.formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Name",
                      style: TextStyle(
                        fontFamily: "Inter",
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormFieldWidget(
                      controller: controller.nameController,
                      hinttext: "Name",
                      validateMsg: "name is required please enter",
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Username",
                      style: TextStyle(
                        fontFamily: "Inter",
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormFieldWidget(
                      controller: controller.userNameController,
                      hinttext: "Username",
                      validateMsg: "username is required please enter",
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Password",
                      style: TextStyle(
                        fontFamily: "Inter",
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      controller: controller.passwordController,
                      validator: (val) {
                        if (val!.isEmpty) {
                          return 'password is required please enter';
                        }
                        return null;
                      },
                      obscureText: isPasswordHidden,
                      decoration: InputDecoration(
                        errorMaxLines: 1,
                        errorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.red,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.red,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        hintText: "Password",
                        hintStyle: const TextStyle(
                          fontFamily: "Inter",
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                        contentPadding: const EdgeInsets.only(
                            top: 15, bottom: 15, left: 20),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        suffixIcon: isPasswordHidden
                            ? InkWell(
                                onTap: () {
                                  setState(() {
                                    isPasswordHidden = false;
                                  });
                                },
                                child: const Icon(
                                  Icons.visibility,
                                  color: Colors.grey,
                                ),
                              )
                            : InkWell(
                                onTap: () {
                                  setState(() {
                                    isPasswordHidden = true;
                                  });
                                },
                                child: const Icon(
                                  Icons.visibility_off,
                                  color: Colors.grey,
                                ),
                              ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Confirmation Password",
                      style: TextStyle(
                        fontFamily: "Inter",
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      controller: controller.confirmPasswordController,
                      validator: (value) {
                        if (value != null && value.isEmpty) {
                          return 'Confirmation password is required please enter';
                        }
                        if (value != controller.passwordController.text) {
                          return 'Confirmation password not matching';
                        }
                        return null;
                      },
                      obscureText: isConfirmPasswordHidden,
                      decoration: InputDecoration(
                        errorMaxLines: 1,
                        errorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.red,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.red,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        hintText: "Confirmation Password",
                        hintStyle: const TextStyle(
                          fontFamily: "Inter",
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                        contentPadding: const EdgeInsets.only(
                            top: 15, bottom: 15, left: 20),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        suffixIcon: isConfirmPasswordHidden
                            ? InkWell(
                                onTap: () {
                                  setState(() {
                                    isConfirmPasswordHidden = false;
                                  });
                                },
                                child: const Icon(
                                  Icons.visibility,
                                  color: Colors.grey,
                                ),
                              )
                            : InkWell(
                                onTap: () {
                                  setState(() {
                                    isConfirmPasswordHidden = true;
                                  });
                                },
                                child: const Icon(
                                  Icons.visibility_off,
                                  color: Colors.grey,
                                ),
                              ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
                        fixedSize: Size(Get.width, 53),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: () {
                        if (controller.formKey.currentState!.validate()) {
                          
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content:
                                  Text('Please fill out all required fields'),
                            ),
                          );
                        }
                      },
                      child: Obx(
                        () => controller.isLoading.value
                            ? const CircularProgressIndicator(
                                color: Colors.white,
                              )
                            : const Text(
                                "Sign Up Now",
                                style: TextStyle(
                                  fontFamily: "Inter",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account?",
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  InkWell(
                    onTap: () {
                      controller.clearfield();
                      Get.off(const LoginScreen(),
                          transition: Transition.noTransition);
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        fontFamily: "Inter",
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: primaryColor,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
