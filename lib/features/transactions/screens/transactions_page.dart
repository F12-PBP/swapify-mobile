import 'package:flutter/material.dart';

import 'package:swapify_mobile/core/widgets/placeholder_page.dart';

class TransactionsPage extends StatelessWidget {
  const TransactionsPage({super.key});

  @override
  Widget build(BuildContext context) => const PlaceholderPage(
    title: 'Transactions',
    subtitle: 'Keep track of your exchanges here.',
    icon: Icons.local_shipping_outlined,
  );
}
