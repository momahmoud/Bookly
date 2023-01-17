import 'package:books_store/core/resources/app_colors.dart';
import 'package:flutter/material.dart';

import 'widgets/splash_body_widget.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashBodyWidget(),
    );
  }
}
