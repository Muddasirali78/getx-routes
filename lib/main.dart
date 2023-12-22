import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX Routes Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Initial route
      initialRoute: '/',
      // Named routes
      getPages: [
        GetPage(name: '/', page: () => HomeScreen()),
        GetPage(name: '/details', page: () => DetailsScreen()),
      ],
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the details screen
            Get.toNamed('/details');
          },
          child: Text('Go to Details'),
        ),
      ),
    );
  }
}

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate back to the home screen
            Get.back();
          },
          child: Text('Go back'),
        ),
      ),
    );
  }
}
