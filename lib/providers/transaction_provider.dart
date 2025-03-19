import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_finance/models/transaction_model.dart';

class TransactionNotifier extends StateNotifier<List<Transaction>> {
  TransactionNotifier() : super([]);

  void addTransaction(Transaction transaction) {
    state = [...state, transaction];
  }

  void deleteTransaction(String id) {
    state = state.where((transaction) => transaction.id != id).toList();
  }
}

final transactionProvider = StateNotifierProvider<TransactionNotifier, List<Transaction>>((ref) {
  return TransactionNotifier();
});
