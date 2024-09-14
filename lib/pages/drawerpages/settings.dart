import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inha_app/themes/theme_provider.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,

      appBar: AppBar(
      backgroundColor: Theme.of(context).colorScheme.primary,

        title: const Text("Настройки"),
      ),
      body: Container(
        padding: const EdgeInsets.only(left:60),
        // height: 200,
        width: 300,
        child: Row(
          children: [
            const Text("Dark Mode", style: TextStyle(fontSize: 20),),
            CupertinoSwitch(
                value: Provider.of<ThemeProvider>(context, listen: false)
                    .isDarkMode,
                onChanged: (value) =>
                    Provider.of<ThemeProvider>(context, listen: false)
                        .toggleTheme(),
                        ),
          ],
        ),
      ),
    );
  }
}
