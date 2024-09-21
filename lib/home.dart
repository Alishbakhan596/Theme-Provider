import 'package:flutter/material.dart';
import 'package:light/Theme_proider.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            child: Text(
              "Light & Dark Theme",
              style: TextStyle(fontSize: 25, fontStyle: FontStyle.italic),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Consumer<ThemeProider>(
                builder: (context, themeProvider, child) {
              return Switch(
                  activeColor: Colors.white,
                  inactiveThumbColor: Colors.white,
                  thumbColor: const MaterialStatePropertyAll(Colors.black),
                  inactiveTrackColor: Colors.transparent,
                  thumbIcon: MaterialStatePropertyAll(
                    themeProvider.isSelected
                        ? const Icon(Icons.nights_stay)
                        : const Icon(Icons.sunny),
                  ),
                  value: themeProvider.isSelected,
                  onChanged: (value) {
                    themeProvider.toggleTheme();
                  });
            }),
          ),
        ],
      ),
    );
  }
}
