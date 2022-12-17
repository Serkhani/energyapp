import 'package:energy/app/modules/sign_in/controllers/sign_in_controller.dart';
import 'package:energy/app/modules/sign_in/widgets/textinfo.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SigninInfoView extends GetView<SignInController> {
  const SigninInfoView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: Get.height * 0.75,
        width: double.infinity,
        // padding: const EdgeInsets.symmetric(horizontal: 20.0),
        padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 60.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(25.0))
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children:  [
                TextInfo(controller: controller.phoneNumTxtCon, text: 'Phone Number'),
                TextInfo(controller: controller.nameTxtCon, text: 'Name'),
                TextInfo(controller: controller.addressTxtCon, text: 'Address (GPS)'),                
              ],
            ),
              Text.rich(
                TextSpan(
                  text: "Don't have an account? ",
                  style: Theme.of(context).textTheme.displaySmall,
                  children: [
                    TextSpan(
                      text: 'Create one',
                      style: Theme.of(context).textTheme.displayMedium,
                      recognizer: TapGestureRecognizer()..onTap =() => controller.createOne()
                    ),
                  ],
                ),
              ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30.0),
                  height: 50.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35.0),
                    gradient: LinearGradient(
                      colors: [
                        Colors.lightBlueAccent,
                        Theme.of(context).scaffoldBackgroundColor
                      ]
                      ),
                  ),
                  child: ElevatedButton(
                    onPressed: ()=> controller.signIn(),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      elevation: 0.0,
                      minimumSize: Size(Get.width, 50.0),
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35.0),
                    ),
                    ),
                    child: Text('Sign In',
                    style: Theme.of(context).textTheme.displayLarge,),
                  ),
                ),

          ],
        ),
      ),
    );
  }
}
