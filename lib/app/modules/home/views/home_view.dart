import 'package:energy/app/modules/home/views/energyusage_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Scaffold(
        appBar: AppBar(
          leading: const CircleAvatar(radius: 3.0,),
          title: Text('Hello, ${controller.user.name.split(' ')[0]}',
          style: Theme.of(context).textTheme.displayLarge,),
          centerTitle: false,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          actions: [
            PopupMenuButton(
              child: const Icon(Icons.menu, size: 50.0, color: Colors.white,),
              itemBuilder: (context) => List.generate(3,(index) => const PopupMenuItem(child: ListTile(title: Text('Some stuff'),),),),
              ),
          ],
        ),
        body: Column(
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 40.0),
              child: EnergyUsageView(),
            )
          ],
        )
      ),
    );
  }
}
