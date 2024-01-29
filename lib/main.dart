import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getdemoex/sumController.dart';
import 'ResultPage.dart';

void main(){
  runApp(
    GetMaterialApp(
      home: first(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {

  TextEditingController marks1 = TextEditingController();
  TextEditingController marks2 = TextEditingController();
  TextEditingController marks3 = TextEditingController();

  // int min = 0;
  // int max = 0;

  @override
  Widget build(BuildContext context) {
    sumController sum = Get.put(sumController());
    return Scaffold(
      appBar: AppBar(title: Text("GetX Controller Demo"),),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(5.0)),
          TextField(
            controller: marks1,
            onChanged: (value) => sum.num1.value = int.tryParse(value) ?? 0,
            decoration: InputDecoration(
              labelText: "Enter Marks 1",
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent,width: 2.0),
                borderRadius: BorderRadius.circular(10.0),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(color: Colors.red,width: 2.0),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black,width: 2.0),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            onTapOutside: (event) {
              FocusScope.of(context).unfocus();
            },
            keyboardType: TextInputType.number,
          ),
          Padding(padding: EdgeInsets.all(5.0)),
          TextField(
            controller: marks2,
            onChanged: (value) => sum.num2.value = int.tryParse(value) ?? 0,
            decoration: InputDecoration(
              labelText: "Enter Marks 2",
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent,width: 2.0),
                borderRadius: BorderRadius.circular(10.0),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(color: Colors.red,width: 2.0),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black,width: 2.0),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            onTapOutside: (event) {
              FocusScope.of(context).unfocus();
            },
            keyboardType: TextInputType.number,
          ),
          Padding(padding: EdgeInsets.all(5.0)),
          TextField(
            controller: marks3,
            onChanged: (value) => sum.num3.value = int.tryParse(value) ?? 0,
            decoration: InputDecoration(
              labelText: "Enter Marks 3",
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent,width: 2.0),
                borderRadius: BorderRadius.circular(10.0),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(color: Colors.red,width: 2.0),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black,width: 2.0),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            onTapOutside: (event) {
              FocusScope.of(context).unfocus();
            },
            keyboardType: TextInputType.number,
          ),
          Padding(padding: EdgeInsets.all(5.0)),
          ElevatedButton(
            onPressed: () {
              sum.fun_totalMarks(marks1.text, marks2.text, marks3.text);
              sum.findMinMax();
              // sum.findMinMax(marks1.text, marks2.text as int, marks3.text as int);
              // setState(() {});
            }, child: Text("Submit"),),
          Padding(padding: EdgeInsets.all(5.0)),
          ElevatedButton(
            onPressed: () {
              Get.to(
                ResultPage(),
                arguments: {
                  'total': sum.total.value,
                  'min' : sum.min.value,
                  'max' : sum.max.value,
                }
              );
            }, child: Text("View Data")),
          Padding(padding: EdgeInsets.all(5.0)),
          Obx(() => Text("Total Marks:= ${sum.total}")),
          Padding(padding: EdgeInsets.all(5.0)),
          Obx(() => Text("Min := ${sum.min}")),
          Padding(padding: EdgeInsets.all(5.0)),
          Obx(() => Text("Max:= ${sum.max}")),
          // Text("data"),
        ],
      ),
    );
  }
}
