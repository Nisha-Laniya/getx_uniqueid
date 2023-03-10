import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_uniqueid/my_controller.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  MyController mycontroller = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Getx Unique id'
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GetBuilder<MyController>(
                id: 'Unique id',
                  builder: (controller) {
                    return Text('The First Value is ${controller.count}',
                        style: TextStyle(fontSize: 25),
                    );
                  }
              ),
              GetBuilder<MyController>(
                  builder: (controller) {
                    return Text('The Second Value is ${controller.count}',
                      style: TextStyle(fontSize: 25),
                    );
                  }
              ),
              ElevatedButton(onPressed: () {
                mycontroller.increament();
              }, child: Text('Increament'))
            ],
          ),
        ),
      ),
    );
  }
}

