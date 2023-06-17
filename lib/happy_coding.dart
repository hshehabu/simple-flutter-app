import 'package:flutter/material.dart';

class HappyCoding extends StatefulWidget {
  const HappyCoding({Key? key}) : super(key: key);

  @override
  State<HappyCoding> createState() => _HappyCodingState();
}

class _HappyCodingState extends State<HappyCoding> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(
        title: const Text('happy coding'),
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        }, icon: const Icon(Icons.arrow_back_ios)),
      ),
body: Column(
  children: [
    Image.asset('images/download.jfif'),
  ],
),
    );
  }
}

