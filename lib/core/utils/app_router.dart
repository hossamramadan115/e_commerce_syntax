import 'package:e_commerce_app/features/cart/presentation/views/add_to_cart_page.dart';
import 'package:e_commerce_app/features/checkOut/presentation/views/checkout_page.dart';
import 'package:e_commerce_app/features/root/presentation/bottom_bar.dart';
import 'package:e_commerce_app/features/sign_up_and_login/presentation/views/login_page.dart';
import 'package:e_commerce_app/features/sign_up_and_login/presentation/views/sign_up_page.dart';
import 'package:e_commerce_app/features/sign_up_and_login/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/categories/presentation/views/categories_page.dart';
import '../../features/categories/presentation/views/same_categories_page.dart';
import '../../features/product/presentation/views/product_details.dart';

abstract class AppRouter {
  static final kSignUpPage = '/signUpPage';
  static final kLoginpage = '/loginpage';
  // static final kAdminHomePage = '/adminHomePage';
  // static final kAddProductPage = '/addProductPage';
  static final kBottombar = '/bottombarScreen';
  static final kProductDetails = '/productDetails';
  static final kCategories = '/CategoriesPage';
  static final kSameCategories = '/sameCategories';
  static final kOrdersPage = '/ordersPage';
  static final kProfilePage = '/profilePage';
  static final kAddToCartPage = '/addToCartPage';
  static final kCheckoutPage = '/checkoutPage';
  static final kSplashView = '/';

  static final router = GoRouter(
    initialLocation: kSplashView,
    routes: [
      GoRoute(
        path: kSplashView,
        builder: (context, state) => SplashView(),
      ),
      GoRoute(
        path: kSignUpPage,
        builder: (context, state) => SignUpPage(),
      ),
      GoRoute(
        path: kLoginpage,
        builder: (context, state) => LoginPage(),
      ),
      GoRoute(
        path: kBottombar,
        builder: (context, state) => BottomBar(),
      ),
      GoRoute(
        path: kCategories,
        builder: (context, state) => CategoriesPage(),
      ),
      GoRoute(
        path: kProductDetails,
        builder: (context, state) => ProductDetails(),
      ),
      GoRoute(
        path: '$kSameCategories/:category',
        builder: (context, state) {
          final categoryName = state.pathParameters['category']!;
          return SameCategoriesPage(categoryName: categoryName);
        },
      ),
        GoRoute(
        path: kAddToCartPage,
        builder: (context, state) => AddToCartPage(),
      ),
       GoRoute(
        path: kCheckoutPage,
        builder: (context, state) => CheckoutPage(),
      ),
    ],
  );
}
