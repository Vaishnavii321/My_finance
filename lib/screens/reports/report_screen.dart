// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:my_finance/providers/transaction_provider.dart';

// class ReportScreen extends ConsumerWidget {
//   const ReportScreen({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final transactions = ref.watch(transactionProvider);
//     double totalIncome = 0;
//     double totalExpense = 0;

//     for (var transaction in transactions) {
//       if (transaction.type == 'income') {
//         totalIncome += transaction.amount;
//       } else {
//         totalExpense += transaction.amount;
//       }
//     }

//     double netBalance = totalIncome - totalExpense;

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Financial Reports'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Text(
//               'Financial Summary',
//               style: Theme.of(context).textTheme.titleLarge,
//             ),
//             const SizedBox(height: 20),
//             Text('Total Income: \$${totalIncome.toStringAsFixed(2)}'),
//             Text('Total Expenses: \$${totalExpense.toStringAsFixed(2)}'),
//             Text('Net Balance: \$${netBalance.toStringAsFixed(2)}'),
//             const SizedBox(height: 20),
//             SizedBox(
//               height: 300,
//               child: PieChart(
//                 PieChartData(
//                   sections: [
//                     PieChartSectionData(
//                       color: Colors.green,
//                       value: totalIncome,
//                       title: 'Income',
//                       radius: 100,
//                       titleStyle: const TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     ),
//                     PieChartSectionData(
//                       color: Colors.red,
//                       value: totalExpense,
//                       title: 'Expenses',
//                       radius: 100,
//                       titleStyle: const TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ],
//                   sectionsSpace: 5,
//                   centerSpaceRadius: 50,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
