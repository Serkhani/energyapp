import 'package:energy/app/modules/sign_in/views/signin_section_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/sign_in_controller.dart';

class SignInView extends GetView<SignInController> {
  const SignInView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          SignInSectionView()
        ],
      ),
    );
  }
}
