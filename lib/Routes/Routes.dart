import 'package:rental/Views/Cart/CartPage.dart';
import 'package:rental/Views/Favorite/FavoritePage.dart';
import 'package:rental/Views/Start/HomeScreenPage.dart';
import 'package:rental/Views/Home/HomePage.dart';
import 'package:rental/Views/Login/LoadingPage.dart';
import 'package:rental/Views/Login/SignInPage.dart';
import 'package:rental/Views/Login/SignupPage.dart';
import 'package:rental/Views/Profile/ProfilePage.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext context)> routes = {
  'loadingPage': (context) => LoadingPage(),
  'getStarted': (context) => HomeScreenPage(),
  'signInPage': (context) => SignInPage(),
  'signUpPage': (context) => SignUpPage(),
  'homePage': (context) => HomePage(),
  'cartPage': (context) => CartPage(),
  'favoritePage': (context) => FavoritePage(),
  'profilePage': (context) => ProfilePage(),
};
