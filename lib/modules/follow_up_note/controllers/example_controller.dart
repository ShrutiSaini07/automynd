import 'package:get/get.dart';

class ExampleController extends GetxController{
  String text = "ABC";
  String text2 = "123";

  onChangeText(){
    text = "XYZ";
    text2 = "787";
    update();
  }
}