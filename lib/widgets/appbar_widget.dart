import 'package:flutter/material.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({super.key});

  Widget _menuItem(String menuText) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Text(
        menuText.toUpperCase(),
        style: const TextStyle(color: Colors.white, fontSize: 16.0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: Row(
        children: [
          _menuItem('File'),
          _menuItem('Sort'),
        ],
      ),
    );
  }
}
