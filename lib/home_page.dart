import 'package:flutter/material.dart';

class HomePageStateless extends StatelessWidget {
  final String texto = 'I am in StatelessWidget';

  const HomePageStateless({super.key});  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: [
          Text(texto),
          TextButton(onPressed: () {
            // texto = 'I changed the text of StatelessWidget';
          },
          child: const Text('Change Text'),
          ),
        ],
      ),
    );
  }
}
