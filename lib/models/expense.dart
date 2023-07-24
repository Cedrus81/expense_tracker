import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

const uuid = Uuid();
final formatter = DateFormat.yMd();

enum Category { food, travel, leisure, work }

const categoryIcons = {
  Category.food: Icons.lunch_dining_outlined,
  Category.travel: Icons.flight_takeoff_outlined,
  Category.leisure: Icons.movie_creation_outlined,
  Category.work: Icons.work_outline_outlined,
};

class Expense {
  Expense(
      {required this.title,
      required this.amount,
      required this.date,
      required this.category})
      : id = uuid.v4();
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  String get formattedDate {
    return formatter.format(date);
  }
}

List<Expense> dummyExpenses = [
  Expense(
    title: 'Lunch at a restaurant',
    amount: 25.99,
    date: DateTime(2023, 07, 15),
    category: Category.food,
  ),
  Expense(
    title: 'Taxi ride to the airport',
    amount: 30.50,
    date: DateTime(2023, 07, 16),
    category: Category.travel,
  ),
  Expense(
    title: 'Movie tickets',
    amount: 12.75,
    date: DateTime(2023, 07, 18),
    category: Category.leisure,
  ),
  Expense(
    title: 'Office supplies',
    amount: 45.25,
    date: DateTime(2023, 07, 20),
    category: Category.work,
  ),
  Expense(
    title: 'Dinner with colleagues',
    amount: 40.00,
    date: DateTime(2023, 07, 22),
    category: Category.food,
  ),
  Expense(
    title: 'Train ticket',
    amount: 15.75,
    date: DateTime(2023, 07, 24),
    category: Category.travel,
  ),
  Expense(
    title: 'Concert tickets',
    amount: 60.00,
    date: DateTime(2023, 07, 25),
    category: Category.leisure,
  ),
  Expense(
    title: 'Coffee for the team',
    amount: 20.00,
    date: DateTime(2023, 07, 27),
    category: Category.work,
  ),
];
