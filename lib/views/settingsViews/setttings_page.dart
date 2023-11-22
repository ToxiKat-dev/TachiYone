import 'package:flutter/material.dart';
import 'package:tachiyone/settings/values.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text("Follow System Theme"),
            trailing: Switch(
              value: useSystemTheme.value,
              onChanged: (value) {
                setState(() {
                  useSystemTheme.value = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text("Dark Theme"),
            trailing: Switch(
              value: isDarkTheme.value,
              onChanged: (value) {
                setState(() {
                  isDarkTheme.value = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text("Reset Settings"),
            trailing: ElevatedButton(
              onPressed: () {
                setState(() {
                  clearValues();
                });
              },
              child: const Text("Delete"),
            ),
          ),
        ],
      ),
    );
  }
}
