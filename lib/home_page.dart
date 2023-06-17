import 'package:flutter/material.dart';
import 'package:simple_flutter_app/happy_coding.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
            return const HappyCoding();
            }),
            );
          },
          child: const Text('Happy coding'),),
    );
  }
}
