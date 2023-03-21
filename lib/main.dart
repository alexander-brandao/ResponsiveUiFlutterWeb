import 'package:flutter/material.dart';
import 'package:responsive_dashboard/responsive/desktopScaffold.dart';
import 'package:responsive_dashboard/responsive/mobileScaffold.dart';
import 'package:responsive_dashboard/responsive/responsive_layout.dart';
import 'package:responsive_dashboard/responsive/tabletScaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:ResponsiveLayout(
          mobileScaffold: const MobileScaffold(),
          tabletScaffold: const TabletScaffold(),
          desktopScaffold: const DesktopScaffold()
      ),
    );
  }
}

