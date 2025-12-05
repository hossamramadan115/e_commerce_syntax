import 'package:e_commerce_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(
    const ECommerce(),
  );
}

class ECommerce extends StatelessWidget {
  const ECommerce({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}
// 0