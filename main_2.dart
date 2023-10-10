import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DevicePreview(
      tools: const [
        DeviceSection(),
      ],
      builder: (context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          useInheritedMediaQuery: true,
          builder: DevicePreview.appBuilder,
          locale: DevicePreview.locale(context),
          title: 'responsive_builder',
          home: Scaffold(
            body: ScreenTypeLayout.builder(
              mobile: (BuildContext context) => Container(
                color: Colors.yellow,
                child: const Center(
                  child: Text(
                    'others',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              tablet: (BuildContext context) => Container(
                color: Colors.red,
                child: const Center(
                  child: Text(
                    'tablet',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              desktop: (BuildContext context) => Container(
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    'desktop',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              watch: (BuildContext context) => Container(
                color: Colors.yellow,
                child: const Center(
                  child: Text(
                    'watch',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}