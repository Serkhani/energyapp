import 'package:energy/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class LastRechargeView extends GetView<HomeController> {
  const LastRechargeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text.rich(
                TextSpan(
                  text: 'Last Recharge\n',
                  style: Theme.of(context)
                                  .textTheme
                                  .displaySmall!
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                      color: Colors.black54),
                  children: [
                    TextSpan(
                      text: '${controller.user.lastRecharge} weeks ago',
                      style: Theme.of(context)
                                  .textTheme
                                  .displayLarge!
                                  .copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                    )
                  ]
                ),
              ),

              Container(
                  height: 30.0,
                  // width: double.infinity * 0.4,
                  width: 120.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35.0),
                    gradient: LinearGradient(
                      colors: [
                        Colors.white,
                        Theme.of(context).scaffoldBackgroundColor
                      ]
                      ),
                  ),
                  child: ElevatedButton(
                    onPressed: ()=> controller.topUp(),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      elevation: 0.0,
                      minimumSize: Size(Get.width, 50.0),
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35.0),
                    ),
                    ),
                    child: Text('Top-up',
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      fontWeight: FontWeight.w600,
                      color: Colors.white),),
                  ),
                ),
              
            ],
          ),
        )
      );
  }
}
