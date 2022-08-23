import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_nop/screen/login/login_page.dart';
import 'package:flutter_nop/screen/test.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();
  late Rx<User?> _user;
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onReady() {
    super.onReady();
    _user = Rx<User?>(auth.currentUser);
    _user.bindStream(auth.userChanges());
    ever(_user, _initialScreen);
  }

  _initialScreen(User? user) {
    if (user == null) {
      print("login page");
      Get.offAll(() => Login_page());
    } else {
      Get.offAll(() => Welcome_Page());
    }
  }

  void register(String email, password) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      Get.snackbar("About User", "User message",
          backgroundColor: Color.fromARGB(255, 200, 32, 32),
          snackPosition: SnackPosition.BOTTOM,
          titleText: Text(
            "Account creation failed",
            style: TextStyle(color: Colors.black),
          ),
          messageText: Text(
            // "Test",
            e.toString(),
            style: TextStyle(color: Colors.black),
          ));
    }
  }

  void Login(String email, password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      Get.snackbar("About Login", "Login messages",
          backgroundColor: Color.fromARGB(255, 200, 32, 32),
          snackPosition: SnackPosition.BOTTOM,
          titleText: Text(
            "Login failed",
            style: TextStyle(color: Colors.black),
          ),
          messageText: Text(
            e.toString(),
            style: TextStyle(color: Colors.black),
          ));
    }
  }

  void Logout() async {
    await auth.signOut();
  }
}
