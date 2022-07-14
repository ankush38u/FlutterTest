import 'package:flutter/material.dart';
import 'learn_flutter_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('Learn Flutter'),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => LearnFlutterPage(),
            ),
          );
        },
      ), // ElevatedButton
    );
  }
}
