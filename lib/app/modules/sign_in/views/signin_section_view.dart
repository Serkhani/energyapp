import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SignInSectionView extends GetView {
  const SignInSectionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SigninSectionView'),
        centerTitle: true,
      ),
      body: Text('SignIn')
    );
  }
}
