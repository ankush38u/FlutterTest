import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 200,
        itemBuilder: (context, index) {
          return ListTile(
            title: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Item $index',
                    textAlign: TextAlign.left,
                  ),
                  const Text('This is item description'),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            leading: const Icon(Icons.person),
            trailing: const Icon(Icons.select_all),
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('AlertDialog'),
                      content: Text('This is an alert dialog for item $index.'),
                      actions: [
                        ElevatedButton(
                          child: const Text('OK'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  });
            },
          );
        });
  }
}
