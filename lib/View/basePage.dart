import 'package:flutter/material.dart';

class BasePage extends StatelessWidget {
  final Widget child;

  const BasePage({required this.child, super.key});

  void _navigateIfNotCurrent(BuildContext context, String targetRoute) {
    final currentRoute = ModalRoute.of(context)?.settings.name;
    if (currentRoute == targetRoute) {
      print('Already on $targetRoute, do nothing');
      return; // 🔒 Prevent navigation
    }
    Navigator.pushReplacementNamed(context, targetRoute);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[500],
        actions: [
          TextButton(
            onPressed: () => _navigateIfNotCurrent(context, '/'),
            child: const Text('Home', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () => _navigateIfNotCurrent(context, '/about'),
            child: const Text('About', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () => _navigateIfNotCurrent(context, '/myblog'),
            child: const Text('My Blog', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () => _navigateIfNotCurrent(context, '/contact'),
            child: const Text('Contact', style: TextStyle(color: Colors.white)),
          ),
          IconButton(
            onPressed: () {
              print('facebook button clicked');
            },
            icon: const Icon(Icons.facebook),
          ),
          IconButton(
            onPressed: () {
              print('send email button clicked');
            },
            icon: const Icon(Icons.email_rounded),
          ),
          IconButton(
            onPressed: () => _navigateIfNotCurrent(context, '/postblog'),
            icon: const Icon(Icons.add_comment_rounded),
            color: Colors.greenAccent,
          ),
        ],
      ),
      body: child,
    );
  }
}
