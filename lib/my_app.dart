import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recipes_flutter_demo/features/recipe/presentation/screens/recipe_list_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'Recipes demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 255, 33, 74)),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        home: const RecipeListScreen(),
      ),
    );
  }
}
