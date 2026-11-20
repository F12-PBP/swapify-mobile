import 'package:flutter/material.dart';

import '../../widgets/placeholder_page.dart';

class ReviewsPage extends StatelessWidget {
  const ReviewsPage({super.key});

  @override
  Widget build(BuildContext context) => const Scaffold(
    body: SafeArea(
      child: PlaceholderPage(
        title: 'Reviews',
        subtitle: 'Reviews from your exchanges will appear here.',
        icon: Icons.star_outline,
        showBack: true,
      ),
    ),
  );
}
