import 'package:energy/app/modules/TopUp/views/buttons_view.dart';
import 'package:energy/app/modules/TopUp/views/exchange_rate_view.dart';
import 'package:energy/app/modules/TopUp/views/transaction_card_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/top_up_controller.dart';

class TopUpView extends GetView<TopUpController> {
  const TopUpView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: const BackButton(color: Colors.white,),
            ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0, bottom: 16.0),
              child: Text('Top-up', style: Theme.of(context).textTheme.titleLarge,),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: ExchangeRateView(),
            ),
            const TransactionCardView(),
            const ButtonsView()
          ],
        ),
      )
    );
  }
}
