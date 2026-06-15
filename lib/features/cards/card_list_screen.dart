import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/database/database.dart' as db;
import 'card_detail_screen.dart';
import '../scan/camera_screen.dart';

final databaseProvider = Provider<db.AppDatabase>((ref) {
  return db.AppDatabase();
});

final cardsProvider = StreamProvider<List<db.Card>>((ref) {
  final database = ref.read(databaseProvider);
  return database.select(database.cards).watch();
});

class CardListScreen extends ConsumerWidget {
  const CardListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cardsAsync = ref.watch(cardsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('CardScan AI'),
        actions: [
          IconButton(icon: const Icon(Icons.search), onPressed: () {}),
        ],
      ),
      body: cardsAsync.when(
        data: (cards) {
          if (cards.isEmpty) {
            return const Center(child: Text('No cards saved yet. Tap the button below to scan one!'));
          }
          return ListView.builder(
            itemCount: cards.length,
            itemBuilder: (context, index) {
              final card = cards[index];
              return ListTile(
                title: Text(card.cardType.toUpperCase()),
                subtitle: Text('Scanned on: ${DateTime.fromMillisecondsSinceEpoch(card.scanDate)}'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => CardDetailScreen(cardId: card.id)));
                },
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Error: $err')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => const CameraScreen()));
        },
        child: const Icon(Icons.document_scanner),
      ),
    );
  }
}
