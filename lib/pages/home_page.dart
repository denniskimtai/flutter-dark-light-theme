import 'package:dark_light_theme/components/box.dart';
import 'package:dark_light_theme/components/button.dart';
import 'package:dark_light_theme/theme/theme.dart';
import 'package:dark_light_theme/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: MyBox(
          color: Theme.of(context).colorScheme.primary,
          child: MyButton(
            color: Theme.of(context).colorScheme.secondary,
            onTap: () {
              Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
            },
            child: Icon(
              Provider.of<ThemeProvider>(context).themeData == lightMode
                  ? Icons.dark_mode
                  : Icons.light_mode,
            ),
          ),
        ),
      ),
    );
  }
}
