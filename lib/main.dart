import 'package:flutter/material.dart';

import 'desktop_body.dart';
import 'mobile_body.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: ResponsiveLayout(
        mobileBody: MyMobileBody(),
        desktopBody: MyDesktopBody(),
      ),

    );
  }
}

class ResponsiveLayout extends StatelessWidget {
  Widget mobileBody;
  Widget desktopBody;

  ResponsiveLayout({required this.mobileBody, required this.desktopBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
      return constraints.maxWidth < 600 ? mobileBody : desktopBody;
      },
    );
  }
}

class MyResponsivePage extends StatelessWidget {
  const MyResponsivePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor:
      width < 600 ? Colors.grey.shade700 : Colors.grey.shade300,
      body: Center(
        child: Text(width.toString()),
      ),
    );
  }
}
