import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('About us'),);
  }
}