import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_nop/screen/welcome.dart';
import 'package:flutter_nop/screen/login/login_page.dart';
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
    // print(_user);
  }

  _initialScreen(User? user) {
    if (user == null) {
      print("login page");
      Get.offAll(() => Login_page());
    } else {
      Get.offAll(() => Home_screen(email: user.email!, user: user.displayName));
    }
  }

  void register(String email, password) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      // await sendEmailVerification(context);
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

  // Future<void> sendEmailVerification(BuildContext context) async {
  //   try {
  //     auth.currentUser!.sendEmailVerification();
  //     Get.snackbar(
  //       "Compless",
  //       "message compless",
  //       backgroundColor: Color.fromARGB(255, 200, 32, 32),
  //       snackPosition: SnackPosition.BOTTOM,
  //       titleText: Text(
  //         "Compless",
  //         style: TextStyle(color: Colors.black),
  //       ),
  //     );
  //   } catch (e) {
  //     Get.snackbar("failed", "failed",
  //         backgroundColor: Color.fromARGB(255, 200, 32, 32),
  //         snackPosition: SnackPosition.BOTTOM,
  //         titleText: Text(
  //           "failed",
  //           style: TextStyle(color: Colors.black),
  //         ),
  //         messageText: Text(
  //           // "Test",
  //           e.toString(),
  //           style: TextStyle(color: Colors.black),
  //         ));
  //   }
  // }

  Future<UserCredential> signInWithFacebook() async {
    // Trigger the sign-in flow
    final LoginResult loginResult = await FacebookAuth.instance.login();

    // Create a credential from the access token
    final OAuthCredential facebookAuthCredential =
        FacebookAuthProvider.credential(loginResult.accessToken!.token);

    // Once signed in, return the UserCredential
    return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
  }

  // Future<UserCredential> signInWithFacebook() async {
  //   try {
  //     final LoginResult loginResult = await FacebookAuth.instance.login();

  //     final OAuthCredential facebookAuthCredential =
  //         FacebookAuthProvider.credential(loginResult.accessToken!.token);

  //     return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
  //   } on FirebaseException catch (e) {
  //     Get.snackbar("failed", "failed",
  //         backgroundColor: Color.fromARGB(255, 200, 32, 32),
  //         snackPosition: SnackPosition.BOTTOM,
  //         titleText: Text(
  //           "failed",
  //           style: TextStyle(color: Colors.black),
  //         ),
  //         messageText: Text(
  //           // "Test",
  //           e.toString(),
  //           style: TextStyle(color: Colors.black),
  //         ));
  //   }
  // }

  void Login(String email, password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
      if (!auth.currentUser!.emailVerified) {}
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
