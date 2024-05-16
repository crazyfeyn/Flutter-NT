class Expense {
  String title;
  double amount;
  DateTime date;

  Expense({
    required this.title,
    required this.amount,
    required this.date,
  });
}

class ExpensesManager {
  List<Expense> list = [
    Expense(
      title: "Food",
      amount: 400,
      date: DateTime(2024, 05, 15),
    ),
    Expense(
      title: "Ice cream",
      amount: 40,
      date: DateTime(2024, 05, 15),
    ),
    Expense(
      title: "Tea",
      amount: 4,
      date: DateTime(2024, 05, 16),
    ),
    Expense(
      title: "Food",
      amount: 400,
      date: DateTime(2024, 05, 16),
    ),
    Expense(
      title: "Ice cream",
      amount: 40,
      date: DateTime(2024, 04, 15),
    ),
  ];

  List<Expense> getByMonth(DateTime date) {
    return list
        .where((expense) =>
            expense.date.month == date.month && expense.date.year == date.year)
        .toList();
  }
}
