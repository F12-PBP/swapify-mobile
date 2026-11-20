import 'package:flutter/material.dart';

import '../../widgets/placeholder_page.dart';
import '../reviews/reviews_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) => PlaceholderPage(
    title: 'Profile',
    subtitle: 'Your Swapify profile will appear here.',
    icon: Icons.person_outline,
    action: OutlinedButton.icon(
      onPressed: () => Navigator.of(context)
          .push(MaterialPageRoute<void>(builder: (_) => const ReviewsPage())),
      icon: const Icon(Icons.star_outline),
      label: const Text('View reviews'),
    ),
  );
}
