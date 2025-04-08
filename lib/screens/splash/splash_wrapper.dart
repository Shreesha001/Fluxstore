import 'dart:async';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluxstore/responsive/mobile_screen_layout.dart';
import 'package:fluxstore/screens/auth_screens/login_screen.dart';
import 'package:fluxstore/screens/splash/splash_screen.dart';

class SplashWrapper extends StatefulWidget {
  const SplashWrapper({super.key});

  @override
  State<SplashWrapper> createState() => _SplashWrapperState();
}

class _SplashWrapperState extends State<SplashWrapper> {
  bool _isSplashDone = false;
  User? _user;

  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 2), () {
      final user = FirebaseAuth.instance.currentUser;
      setState(() {
        _user = user;
        _isSplashDone = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!_isSplashDone) {
      return const SplashScreen();
    }

    if (_user != null) {
      return const MobileScreenLayout();
    } else {
      return const LoginScreen();
    }
  }
}
