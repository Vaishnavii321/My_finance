import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_finance/providers/transaction_provider.dart';
import 'package:my_finance/screens/transaction/add_transaction_screen.dart';
import 'package:my_finance/widgets/transaction_card.dart';

class TransactionListScreen extends ConsumerWidget {
  const TransactionListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final transactions = ref.watch(transactionProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Transaction History', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
        centerTitle: true,
        elevation: 0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blueAccent, Colors.indigo],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: transactions.isEmpty
          ? const Center(
              child: Text(
                'No transactions added yet!',
                style: TextStyle(fontSize: 18),
              ),
            )
          : ListView.builder(
              itemCount: transactions.length,
              itemBuilder: (context, index) {
                final transaction = transactions[index];
                return Dismissible(
                  key: Key(transaction.id),
                  background: Container(
                    color: Colors.red,
                    alignment: Alignment.centerRight,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: const Icon(Icons.delete, color: Colors.white),
                  ),
                  onDismissed: (_) {
                    ref
                        .read(transactionProvider.notifier)
                        .deleteTransaction(transaction.id);
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Transaction deleted'),
                        duration: Duration(seconds: 2),
                      ),
                    );
                  },
                  child: TransactionCard(
                    title: transaction.title,
                    amount: transaction.amount,
                    type: transaction.type,
                    date: transaction.date,
                    category: transaction.category,
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
    context,
    MaterialPageRoute(builder: (_) => const AddTransactionScreen()),
  ),
        child: const Icon(Icons.add),
      ),
    );
  }
}
