import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:fluxstore/screens/main_screens/cart_screen.dart';
import 'package:fluxstore/screens/main_screens/home_screen.dart';
import 'package:fluxstore/screens/main_screens/profile_screen.dart';
import 'package:fluxstore/screens/main_screens/search_screen.dart';

final List<Widget> HomeScreenItems = [
  const HomeScreen(),
  const SearchScreen(),
  const CartScreen(),
  const ProfileScreen(),
];
