import 'package:energy/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ButtonsView extends GetView<HomeController> {
  const ButtonsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 8.0),
            height: 50.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35.0),
              gradient: LinearGradient(colors: [
                Theme.of(context).scaffoldBackgroundColor,
                Colors.lightBlue,
                Colors.lightBlueAccent
              ]),
            ),
            child: ElevatedButton(
              onPressed: () => controller.confirm(),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                elevation: 0.0,
                minimumSize: Size(Get.width * 0.4, 50.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35.0),
                ),
              ),
              child: Text(
                'Confirm',
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
                minimumSize: Size(Get.width * 0.4, 50.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35.0),
                    side: const BorderSide(width: 5.0))),
            onPressed: () => controller.cancel(),
            child: Text(
              'Cancel',
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ),
        ],
      ),
    );
  }
}
