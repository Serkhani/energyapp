import '../../../../app/modules/TopUp/controllers/top_up_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ExchangeRateView extends GetView<TopUpController> {
  const ExchangeRateView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 0.95,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        height: 50.0,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 205, 205, 194),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Exchange rate: ',
              style: Theme.of(context).textTheme.displayMedium!.copyWith(color: Colors.black),
            ),
            Text('1kWh = ${controller.exchangeRate.value.toStringAsFixed(2)} GHS',
            style: Theme.of(context).textTheme.displayMedium,)
          ],
        ),
      ),
    );
  }
}
