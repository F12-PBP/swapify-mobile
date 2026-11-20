import 'package:flutter/material.dart';

import '../../widgets/placeholder_page.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) => const PlaceholderPage(
    title: 'Messages',
    subtitle: 'Your conversations with other swappers will appear here.',
    icon: Icons.chat_bubble_outline,
  );
}
