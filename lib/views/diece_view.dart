import 'package:diece_gyak/controllers/diece_view_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DieceView extends StatelessWidget {
  DieceViewController controller = Get.put(DieceViewController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DieceViewController>(
      init: controller,
      builder: (_) {
        return Scaffold(
          backgroundColor: const Color.fromARGB(255, 54, 174, 244),
          appBar: AppBar(
            title: Text('Сука Игральная кость'),
            backgroundColor: Color.fromARGB(255, 54, 174, 244),
          ),
          body: Center(
            child: CupertinoButton(
                child:
                    Image.asset("images/dice${controller.diceFaceNumber}.png"),
                onPressed: () {
                  controller.newRandomNumber();
                }),
          ),
        );
      },
    );
  }
}
