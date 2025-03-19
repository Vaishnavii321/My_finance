import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class DatabaseService {
  Future<void> saveTransaction(Map<String, dynamic> transaction) async {
    final prefs = await SharedPreferences.getInstance();
    List<String> transactions = prefs.getStringList('transactions') ?? [];
    transactions.add(jsonEncode(transaction));
    await prefs.setStringList('transactions', transactions);
  }

  Future<List<Map<String, dynamic>>> fetchTransactions() async {
    final prefs = await SharedPreferences.getInstance();
    List<String> transactions = prefs.getStringList('transactions') ?? [];
    return transactions
        .map((e) => Map<String, dynamic>.from(jsonDecode(e)))
        .toList();
  }
}
