import 'package:flutter/material.dart';
import 'package:prolingo_app/product/enums/image_constants.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ana sayfa'),
      ),
      body: Center(
        child: Image.asset(IconConstants.appIcon.toPng),
      ),
    );
  }
}
