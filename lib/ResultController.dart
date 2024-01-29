import 'package:get/get.dart';

class ResultController extends GetxController{
  RxInt total = 0.obs;
  RxInt min = 0.obs;
  RxInt max = 0.obs;

  void setData({required int total,required int min, required int max}){
    this.total.value = total;
    this.min.value = min;
    this.max.value = max;
  }
}