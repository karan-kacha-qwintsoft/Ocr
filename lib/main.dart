import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'core/constants/app_theme.dart';
import 'features/cards/card_list_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await Hive.initFlutter();
  await Hive.openBox('settings');

  runApp(
    const ProviderScope(
      child: CardScanApp(),
    ),
  );
}

class CardScanApp extends ConsumerWidget {
  const CardScanApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'CardScan AI',
      theme: AppTheme.lightTheme,
      home: const CardListScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
