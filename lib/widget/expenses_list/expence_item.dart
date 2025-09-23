import 'package:flutter/material.dart';
import '../../models/expense.dart';

class ExpenceItem extends StatelessWidget {
  final Expense expense;
  const ExpenceItem(this.expense, {super.key});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(expense.title,
                style: Theme.of(context).textTheme.titleLarge),
            SizedBox(height: 6),
            Row(
              children: [
                Text('\$${expense.amount.toStringAsFixed(2)}'),
                const Spacer(),
                Icon(categoryIcons[expense.category]),
                const SizedBox(width: 6),
                Text(expense.formattedDate),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
