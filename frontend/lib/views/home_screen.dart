import 'package:flutter/material.dart';
import 'package:lung_disease_app/views/desktop_landing/desktop_landing.dart';
import 'package:lung_disease_app/views/mobile/mobile.dart';
import 'package:lung_disease_app/views/responsive_layout/responsive_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    
    return const ResponsiveLayout(mobileBody: MobileViewScreen(), webBody: LandingDesktopView());
  }
}

