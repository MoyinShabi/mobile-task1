import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher_string.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Personal Details'),
      ),
      backgroundColor: const Color(0xffe1e2ff),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Image.asset(
              'assets/images/slack-display-photo.jpg',
              fit: BoxFit.cover,
              height: 200,
              width: 200,
            ),
          ),
          const SizedBox(height: 12),
          Center(
            child: Text(
              'Moyin Shabi',
              style: theme.bodyLarge,
            ),
          ),
          const SizedBox(height: 18),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              shadowColor: Colors.transparent,
              elevation: 0,
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 30),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
            ),
            onPressed: () => launchUrlString('https://github.com/MoyinShabi'),
            icon: const FaIcon(FontAwesomeIcons.github),
            label: const Text('Open GitHub'),
          ),
          SizedBox(height: MediaQuery.paddingOf(context).top),
        ],
      ),
    );
  }
}
