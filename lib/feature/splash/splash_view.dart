// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kartal/kartal.dart';
import 'package:prolingo_app/feature/home/home_view.dart';
import 'package:prolingo_app/feature/login/login_view.dart';
import 'package:prolingo_app/feature/splash/splash_provider.dart';
//import 'package:prolingo_app/product/constants/color_constants.dart';
import 'package:prolingo_app/product/constants/string_constants.dart';
import 'package:prolingo_app/product/enums/image_constants.dart';
import 'package:prolingo_app/product/widget/text/colorful_text.dart';

class SplashView extends ConsumerStatefulWidget {
  const SplashView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashViewState();
}

class _SplashViewState extends ConsumerState<SplashView> {
  final splashProvider = StateNotifierProvider<SplashProvider, SplashState>((ref) {
    return SplashProvider();
  });

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(splashProvider, (previous, next) {
      if (next.isRequiredForceUpdate ?? false) {
        showAboutDialog(context: context);
        return;
      }
      if (next.isRedirectHome != null) {
        if (next.isRedirectHome!) {
          context.route.navigateToPage(const HomeView());
        } else {
          //false
        }
      }
    });
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: IconConstants.appIcon.toImage,
            ),
            const ColorfulText(
              colorizeColors: [
                Color.fromARGB(255, 0, 11, 97),
                Color.fromARGB(255, 33, 0, 111),
                Color.fromARGB(255, 0, 99, 181),
                Color.fromARGB(255, 9, 0, 29),
              ],
              text: StringConstants.companyName,
            ),
            TextButton(
              onPressed: () {
                context.route.navigateToPage(const LoginView());
              },
              child: const Text('--------DEMO-------'),
            ),
          ],
        ),
      ),
    );
  }
}
