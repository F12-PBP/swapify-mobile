import 'package:flutter/material.dart';

import 'screens/navigation_shell.dart';

void main() => runApp(const SwapifyApp());

class SwapifyApp extends StatelessWidget {
  const SwapifyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const seed = Color(0xFF495C4A);
    return MaterialApp(
      title: 'Swapify',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: seed),
        scaffoldBackgroundColor: const Color(0xFFFAFAF6),
        useMaterial3: true,
      ),
      home: const NavigationShell(),
    );
  }
}
