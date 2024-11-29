import 'package:flutter/material.dart';
import 'package:mobileapp/widgets/AppBar.dart';
import 'package:mobileapp/widgets/HomeWidget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWidget(),
      body: HomeWidget(),
    );
  }
}
