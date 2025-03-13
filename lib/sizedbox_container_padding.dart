import 'package:flutter/material.dart';

class SizedBoxContainerPadding extends StatefulWidget {
  const SizedBoxContainerPadding({super.key});

  @override
  State<SizedBoxContainerPadding> createState() =>
      _SizedBoxContainerPaddingState();
}

class _SizedBoxContainerPaddingState extends State<SizedBoxContainerPadding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Beginners'),
        ),
        body: Column(
          children: <Widget>[
            const Icon(
              Icons.accessibility,
              size: 50,
            ),
            const Text('Beginners'),
            //Spacer(flex: 1),
            const SizedBox(height: 10),
            const Text('Beginners'),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Text(
                'Beginners',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                //color: Colors.redAccent,
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 3),
                  borderRadius: BorderRadius.circular(10),
                  //color: Colors.redAccent,
                ),
                child: const Text('Beginners'),
              ),
            )
          ],
        ));
  }
}
