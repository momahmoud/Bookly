import 'package:books_store/core/resources/app_assets.dart';
import 'package:books_store/core/utils/app_routes.dart';
import 'package:books_store/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class SplashBodyWidget extends StatefulWidget {
  const SplashBodyWidget({super.key});

  @override
  State<SplashBodyWidget> createState() => _SplashBodyWidgetState();
}

class _SplashBodyWidgetState extends State<SplashBodyWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animation;

  @override
  void initState() {
    super.initState();
    initAnimation();
    navigateToHomePage();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            AppAssets.logo,
          ),
          AnimatedBuilder(
              animation: animation,
              builder: (context, _) {
                return SlideTransition(
                  position: animation,
                  child: const Text('Read Free Books'),
                );
              }),
        ],
      ),
    );
  }

  void navigateToHomePage() {
    Future.delayed(const Duration(seconds: 2), () {
      GoRouter.of(context).pushReplacement(
        AppRoutes.homeView,
      );
    });
  }

  void initAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    animation = Tween<Offset>(
      begin: const Offset(0, 10),
      end: Offset.zero,
    ).animate(animationController);
    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}
