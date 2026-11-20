import 'package:flutter/material.dart';

import 'package:swapify_mobile/core/navigation/navigation_shell.dart';
import 'package:swapify_mobile/core/theme/app_theme.dart';

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
