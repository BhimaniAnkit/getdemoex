import 'package:get/get.dart';

class sumController extends GetxController{
  int a = 0,b = 0,c = 0;
  RxInt total = 0.obs;
  RxInt num1 = 0.obs;
  RxInt num2 = 0.obs;
  RxInt num3 = 0.obs;
  
  RxInt min = 0.obs;
  RxInt max = 0.obs;
  // RxInt max = RxInt(0);
  
  // void findMinMax(int num1, int num2, int num3){
  void findMinMax(){
    min.value = [num1.value,num2.value,num3.value].reduce((value, element) => value < element ? value : element);
    print("Min := ${min.value}");

    max.value = [num1.value,num2.value,num3.value].reduce((value, element) => value > element ? value : element);
    print("Max := ${max.value}");
  }

  fun_totalMarks(String m1, String m2, String m3){
     a = int.parse(m1);
     b = int.parse(m2);
     c = int.parse(m3);
     total.value = a + b + c;
  }
}