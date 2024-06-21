import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/home_page.dart';

class HomePageStatefull extends StatefulWidget {
  HomePageStatefull({super.key}) {
    print('HomePageStatefull constructor');
  }

  @override
  State<StatefulWidget> createState() {
    return _HomePageStateFullState();
  }
}

class _HomePageStateFullState extends State<HomePageStatefull> {
  String texto = 'I am in StatefulWidget';

  _HomePageStateFullState() {
    print('_HomePageStatefull constructor');
  }

  @override
  void initState() {
    super.initState();
    texto = 'Text changed by initState';
    print('Start initState');

    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      print('addPostFrameCallback');
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const HomePageStateless(),
      ));
    });
    print('End initState');
  }

  @override
  Widget build(BuildContext context) {
    print('Building the StatefulWidget');
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(texto),
            TextButton(
              onPressed: () {
                setState(() {
                  texto = 'I changed the text of StatefulWidget';
                });
              },
              child: const Text('Change Text'),
            ),
          ],
        ),
      ),
    );
  }
}
