import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  LearnFlutterPage({Key? key}) : super(key: key);

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isChecked = false;
  bool isCheckBoxChecked = false;
  void onCheckChanged(bool value) {
    setState(() {
      isCheckBoxChecked = value;
    });
  }

  void onSwitchChanged(bool value) {
    setState(() {
      isChecked = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn Flutter'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              debugPrint('Search');
            },
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {
              debugPrint('More');
            },
          ),
        ],
      ), // AppBar
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/cube.jpeg', fit: BoxFit.contain, height: 200),
            const SizedBox(
              height: 20,
            ),
            const Divider(height: 1, color: Colors.black),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              color: Colors.black,
              width: double.infinity,
              child: const Center(
                child: Text(
                  'Learn Flutter',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                debugPrint("Button pressed");
              },
              style: ElevatedButton.styleFrom(
                primary: isChecked ? Colors.orange : Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              child: const Text('ELEVATED BUTTON'),
            ),
            const SizedBox(
              height: 20,
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text('OUTLINED BUTTON'),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onHover: (bool isHover) {
                debugPrint('Hover: $isHover');
              },
              onPressed: () {},
              child: const Text('TEXT BUTTON'),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint('Tap');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  Text(
                    'Favorite',
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                  Icon(
                    Icons.fax,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            Switch(
              value: isChecked,
              onChanged: (bool value) {
                onSwitchChanged(value);
                debugPrint('Switch value: $value');
              },
            ),
            Checkbox(
              value: isCheckBoxChecked,
              onChanged: (bool? newVal) {
                onCheckChanged(newVal!);
              },
            ),
            Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/d/d3/Albert_Einstein_Head.jpg',
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }
}
