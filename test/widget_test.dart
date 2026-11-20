import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:swapify_mobile/main.dart';
import 'package:swapify_mobile/theme/app_theme.dart';

void main() {
  testWidgets('navigates between all modules and reviews', (tester) async {
    await tester.pumpWidget(const SwapifyApp());
    final context = tester.element(find.byType(NavigationBar));
    final theme = Theme.of(context);
    expect(theme.colorScheme.primary, SwapifyColors.primary);
    expect(theme.scaffoldBackgroundColor, SwapifyColors.background);
    expect(theme.textTheme.headlineSmall?.fontFamily, 'Fraunces');
    expect(theme.textTheme.bodyMedium?.fontFamily, 'PlusJakartaSans');
    expect(find.text('Discover clothes ready for a new home.'), findsOneWidget);

    for (final (label, title) in [
      ('Swaps', 'Swap Requests'),
      ('Activity', 'Transactions'),
      ('Chat', 'Messages'),
      ('Profile', 'Your Swapify profile will appear here.'),
    ]) {
      await tester.tap(find.text(label).last);
      await tester.pumpAndSettle();
      expect(find.text(title), findsOneWidget);
    }

    await tester.tap(find.text('View reviews'));
    await tester.pumpAndSettle();
    expect(find.text('Reviews'), findsOneWidget);
    await tester.tap(find.byType(BackButton));
    await tester.pumpAndSettle();
    expect(find.text('Your Swapify profile will appear here.'), findsOneWidget);
  });
}
