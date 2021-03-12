import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Navigation',

      home: Scaffold(
        appBar: AppBar(
          title: Text('Navigation'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text('Go to Home'),
                onPressed: () async {
                  /*Get.to(
                      Home(),
                    fullscreenDialog: false,
                    transition: Transition.zoom,
                    duration: Duration(milliseconds: 1000),
                    //curve: Curves.bounceInOut,
                  );*/
                  //Get.off(Home());
                  //Get.offAll(Home());
                  //Get.to(Home(), arguments: 'Data from Main');
                  var data = await  Get.to(Home());
                  print('The received data is $data');
                },
              ),

            ],
          ),
        ),
      ),
    );
  }

}
