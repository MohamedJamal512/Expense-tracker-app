import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:expense_tracker/widget/expenses.dart';

// Teal-based light theme
var kcolorScheme = ColorScheme.fromSeed(
  seedColor: Colors.teal,
  brightness: Brightness.light,
);

// Deep purple-based dark theme
var kdarkColorScheme = ColorScheme.fromSeed(
  seedColor: Colors.deepPurple,
  brightness: Brightness.dark,
);

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((
  //   fn,
  // ) {
  runApp(
    MaterialApp(
      home: Expenses(),
      themeMode: ThemeMode.system,
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: kdarkColorScheme,
        appBarTheme: AppBarTheme(
          backgroundColor: kdarkColorScheme.primaryContainer,
          foregroundColor: kdarkColorScheme.onPrimaryContainer,
        ),
        cardTheme: CardTheme(
          color: kdarkColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kdarkColorScheme.primary,
            foregroundColor: kdarkColorScheme.onPrimary,
          ),
        ),
        textTheme: ThemeData.dark().textTheme.copyWith(
          titleLarge: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: kdarkColorScheme.onSecondaryContainer,
          ),
        ),
      ),
      theme: ThemeData().copyWith(
        colorScheme: kcolorScheme,
        appBarTheme: AppBarTheme(
          backgroundColor: kcolorScheme.primaryContainer,
          foregroundColor: kcolorScheme.onPrimaryContainer,
        ),
        cardTheme: CardTheme(
          color: kcolorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kcolorScheme.primary,
            foregroundColor: kcolorScheme.onPrimary,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
          titleLarge: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: kcolorScheme.onSecondaryContainer,
          ),
        ),
      ),
    ),
  );
  // });
}
