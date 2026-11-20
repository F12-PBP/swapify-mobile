import 'package:flutter/material.dart';

import 'screens/navigation_shell.dart';
import 'theme/app_theme.dart';

void main() => runApp(const SwapifyApp());

class SwapifyApp extends StatelessWidget {
  const SwapifyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Swapify',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      home: const NavigationShell(),
    );
  }
}
