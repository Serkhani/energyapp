import 'package:energy/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class EnergyUsageView extends GetView<HomeController> {
  const EnergyUsageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(3.0),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue
                  ),
                  child: const Icon(Icons.lightbulb, color: Colors.white,),),
                 Padding(
                  padding:const EdgeInsets.only(left: 16.0),
                  child: Text('Energy Usage', 
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(color: Colors.black),),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Divider(
                thickness: 3.0,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.calendar_today_rounded, color: Colors.green,),
                    Text.rich(
                      TextSpan(
                        text: 'Today\n',
                        style: Theme.of(context).textTheme.titleSmall,
                        children: [
                          TextSpan(
                            text: '${controller.user.energyUsed2day}kWh',
                            style: Theme.of(context).textTheme.displayLarge!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.black)
                          )
                        ]
                      )
                    )
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.calendar_month_outlined, color: Colors.purple,),
                    Text.rich(
                      TextSpan(
                        text: 'This Month\n',
                        style: Theme.of(context).textTheme.titleSmall,
                        children: [
                          TextSpan(
                            text: '${controller.user.energyUsedInMonth}kWh',
                            style: Theme.of(context).textTheme.displayLarge!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.black)
                          )
                        ]
                      )
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
