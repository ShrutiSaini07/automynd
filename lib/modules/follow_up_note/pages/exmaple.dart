import 'package:auto_mynds/Modules/follow_up_note/controllers/example_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

class Example extends StatelessWidget {
   Example({super.key});

  var controller = Get.put(ExampleController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            GetBuilder<ExampleController>(builder: (controller){
              return Text(controller.text);
            }),
            Text(controller.text2),
            ElevatedButton(onPressed: (){
              controller.onChangeText();
            }, child: Text("data"))
          ],
        ),
      ),
    );
  }
}
