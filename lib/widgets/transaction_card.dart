import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionCard extends StatelessWidget {
  final String title;
  final double amount;
  final String type;
  final DateTime date;
  final String category;

  const TransactionCard({
    super.key,
    required this.title,
    required this.amount,
    required this.type,
    required this.date,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    final isIncome = type == 'income';
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: isIncome ? Colors.green : Colors.red,
          child: Icon(
            isIncome ? Icons.arrow_downward : Icons.arrow_upward,
            color: Colors.white,
          ),
        ),
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold),),
        subtitle: Text(
          '${DateFormat.yMMMd().format(date)} - $category',
          style: const TextStyle(color: Colors.black),
        ),
        trailing: Text(
          '${isIncome ? '+' : '-'} \$${amount.toStringAsFixed(2)}',
          style: TextStyle(
            color: isIncome ? Colors.green : Colors.red,
            fontWeight: FontWeight.bold,
            fontSize: 20
          ),
        ),
      ),
    );
  }
}
