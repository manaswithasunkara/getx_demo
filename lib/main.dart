import 'package:get/get.dart';
import 'package:flutter/material.dart';

void main()=> runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SnackBar Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SnackBarDemo(title:'SnackBar Using GetX'),
    );
  }
}
class SnackBarDemo extends StatelessWidget {
  const SnackBarDemo({Key? key, required this.title}) : super(key: key);
final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: ElevatedButton(onPressed:(){
          Get.snackbar("welcome to flutter", "please work my dear code",
          icon: Icon(Icons.person,color: Colors.white,),
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.green);
        }, child: Text('Open Snackbar')),
      )
    );
  }
}




