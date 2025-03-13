import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScrollViews extends StatefulWidget {
  const ScrollViews({super.key});

  @override
  State<ScrollViews> createState() => _ScrollViewsState();
}

class _ScrollViewsState extends State<ScrollViews> {
  bool? isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Beginners'),
        ),
        body: Column(
          children: [
            Checkbox(
              value: isCheck,
              onChanged: (bool? value) {
                setState(() {
                  isCheck = value;
                });
              },
            ),
            if (isCheck == true) ...[
              SvgPicture.asset(
                'assets/svgs/svg_home.svg',
                semanticsLabel: 'My SVG Image',
                height: 100,
                width: 70,
                color: Colors.yellow,
              ),
            ] else ...[
              const SizedBox(height: 10),
              Image.asset(
                'assets/images/image_background.jpg',
              ),
            ],
            const Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text('Beginners', style: TextStyle(fontSize: 50)),
                    Text('Beginners', style: TextStyle(fontSize: 50)),
                    Text('Beginners', style: TextStyle(fontSize: 50)),
                    Text('Beginners', style: TextStyle(fontSize: 50)),
                    Text('Beginners', style: TextStyle(fontSize: 50)),
                    Text('Beginners', style: TextStyle(fontSize: 50)),
                    Text('Beginners', style: TextStyle(fontSize: 50)),
                    Text('Beginners', style: TextStyle(fontSize: 50)),
                    Text('Beginners', style: TextStyle(fontSize: 50)),
                    Text('Beginners', style: TextStyle(fontSize: 50)),
                    Text('Beginners', style: TextStyle(fontSize: 50)),
                    Text('Beginners', style: TextStyle(fontSize: 50)),
                    Text('Beginners', style: TextStyle(fontSize: 50)),
                    Text('Beginners', style: TextStyle(fontSize: 50)),
                    Text('Beginners', style: TextStyle(fontSize: 50)),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
