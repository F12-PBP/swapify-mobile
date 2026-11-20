import 'package:flutter/material.dart';

import '../../widgets/placeholder_page.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) => const PlaceholderPage(
    title: 'Catalog',
    subtitle: 'Discover clothes ready for a new home.',
    icon: Icons.checkroom_outlined,
  );
}
