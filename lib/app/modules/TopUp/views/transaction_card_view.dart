import '../../../../app/modules/TopUp/widgets/amountmeter_id.dart';

import '../../../../app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class TransactionCardView extends GetView<HomeController> {
  const TransactionCardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 40.0),
          child: Column(
            children: [
              Text(
                'Transaction\n',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Container(
                      color: Colors.blue,
                      height: 80.0,
                      width: 80.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text.rich(
                      TextSpan(
                        text: '${controller.user.name}\n',
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                        children: [
                          TextSpan(
                              text: controller.user.email,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(color: Colors.black54)),
                        ],
                      ),
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24.0, bottom: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Phone',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(color: Colors.black54)),
                    TextField(
                      style: Theme.of(context).textTheme.displayMedium,
                      decoration: const InputDecoration(
                          constraints: BoxConstraints.expand(height: 30.0)),
                      controller: controller.phoneTxtCon,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AmountMeterId(
                      text: 'Amount',
                      info:
                          'GHS ${controller.user.accountBal.toStringAsFixed(2)}'),
                  AmountMeterId(
                      text: 'Meter ID', info: controller.user.meterId),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
