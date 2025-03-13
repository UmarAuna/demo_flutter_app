import 'package:flutter/material.dart';

class BannersDetailPage extends StatefulWidget {
  final String userName;
  const BannersDetailPage({super.key, required this.userName});

  @override
  State<BannersDetailPage> createState() => _BannersDetailPageState();
}

class _BannersDetailPageState extends State<BannersDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Banners Detail'),
      ),
      body: Column(
        children: [
          Text('Welcome ${widget.userName}'),
        ],
      ),
    );
  }
}
