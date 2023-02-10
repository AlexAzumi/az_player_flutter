import 'package:flutter/material.dart';
import 'dart:io';

import 'dart:developer';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({super.key});

  Widget _menuItem(String menuText, void Function() onPressItem) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: TextButton(
        onPressed: onPressItem,
        child: Text(
          menuText.toUpperCase(),
          style: const TextStyle(color: Colors.white, fontSize: 16.0),
        ),
      ),
    );
  }

  void onPressUpdateSongs() {
    log('Pressed update songs');
  }

  void onPressSortByName() {
    log('Pressed sort by name');
  }

  void onPressSortByArtist() {
    log('Pressed sort by artist');
  }

  Future<void> onPressHelp(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return const SimpleDialog(
          title: Text('About az! player'),
          children: [Text('Hello there')],
        );
      },
    );
  }

  // Exit button
  void onPressedExit() {
    exit(0);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: Row(
        children: [
          _menuItem('Update songs', onPressUpdateSongs),
          _menuItem('Sort by Name', onPressSortByName),
          _menuItem('Sort by Artist', onPressSortByArtist),
          _menuItem('Help', () => onPressHelp(context)),
          _menuItem('Exit', onPressedExit),
        ],
      ),
    );
  }
}
