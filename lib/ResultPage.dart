import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:getdemoex/ResultController.dart';

class ResultPage extends StatelessWidget {
  final ResultController resultController = Get.put(ResultController());

  @override
  Widget build(BuildContext context) {
    Map<String, int> data = Get.arguments;
    resultController.setData(total: data['total']!, min: data['min']!, max: data['max']!);

    return Scaffold(
      appBar: AppBar(
        title: Text("View Data"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Total := ${resultController.total}",style: TextStyle(color: Colors.blueAccent,fontSize: 25,fontWeight: FontWeight.bold),)
              .animate()
              .fadeIn(duration: 600.ms)
              .scale(delay: 300.ms)
              .move(delay: 300.ms,duration: 600.ms)
              .then(duration: 600.ms,delay: 300.ms,curve: Cubic(10.0, 10.0, 10.0, 10.0)),
            Padding(padding: EdgeInsets.only(top: 10.0,)),
            // Spacer(),
            Text("Min:= ${resultController.min}",style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold,fontSize: 25),)
              .animate()
              .fadeIn(duration: 600.ms)
              .scale(delay: 300.ms)
              .move(delay: 300.ms,duration: 600.ms)
              .then(duration: 600.ms,delay: 300.ms,curve: Cubic(10.0, 10.0, 10.0, 10.0)),
            Padding(padding: EdgeInsets.only(top: 10.0)),
            // Spacer(),
            Text("Max := ${resultController.max}",style: TextStyle(color: Colors.blueAccent,fontSize: 25,fontWeight: FontWeight.bold),)
              .animate()
              .fadeIn(duration: 600.ms)
              .scale(delay: 300.ms)
              .move(delay: 300.ms,duration: 600.ms)
              .then(duration: 600.ms,delay: 300.ms,curve: Cubic(10.0, 10.0, 10.0, 10.0)),
          ],
        ),
      ),
    );
  }
}
