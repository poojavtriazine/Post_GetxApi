// ignore_for_file: sized_box_for_whitespace

import 'package:app1/logincontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  LoginController controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: const Center(child: Text('Login Page')),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: controller.emailcontroller.value,
              decoration: const InputDecoration(hintText: 'Email'),
            ),
            TextFormField(
              controller: controller.passwordcontroller.value,
              decoration: const InputDecoration(
                hintText: 'Password',
              ),
            ),
            const SizedBox(height: 50),
            InkWell(
              onTap: () {
                controller.loginapi();
              },
              child: Container(
                height: 50,
                color: Colors.lightGreenAccent,
                child: const Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.pink,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
