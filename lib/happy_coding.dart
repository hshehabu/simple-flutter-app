import 'package:flutter/material.dart';

class HappyCoding extends StatefulWidget {
  const HappyCoding({Key? key}) : super(key: key);

  @override
  State<HappyCoding> createState() => _HappyCodingState();
}

class _HappyCodingState extends State<HappyCoding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('happy coding'),
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: Column(
        children: [
          Center(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('images/download.jfif'),
          )),
          const SizedBox(
            height: 10,
          ),
          const Divider(),
          const Center(
            child: Text(
              'Happy coding message from jimma university',
              style: TextStyle(color: Colors.black54),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
            ],
          ),
       const SizedBox(
         height: 20,
       ),
          SizedBox(
            height: 125,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(onPressed: (){}, child: const Text('LIKE')),
                OutlinedButton(onPressed: (){}, child: const Text('SHARE')),
                TextButton(onPressed: (){}, child: const Text('COMMENT'))

              ],
            ),
          ),

        ],
      ),
    );
  }
}
