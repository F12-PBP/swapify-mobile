import 'package:flutter/material.dart';

import 'package:swapify_mobile/core/widgets/placeholder_page.dart';

class SwapsPage extends StatelessWidget {
  const SwapsPage({super.key});

  @override
  Widget build(BuildContext context) => const PlaceholderPage(
    title: 'Swap Requests',
    subtitle: 'Your incoming and outgoing swap requests will appear here.',
    icon: Icons.swap_horiz,
  );
}
