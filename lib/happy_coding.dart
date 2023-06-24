import 'package:flutter/material.dart';

class HappyCoding extends StatefulWidget {
  const HappyCoding({Key? key}) : super(key: key);

  @override
  State<HappyCoding> createState() => _HappyCodingState();
}

class _HappyCodingState extends State<HappyCoding> {
  bool isSwitch = false;
  bool isLiked = true;
  bool? isChecked = false;
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
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint('information');
            },
            icon: const Icon(Icons.info_outline),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Image.asset('images/download.jfif'),
            ),
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
              children: [
                Icon(Icons.star, color: isSwitch ? Colors.yellow : null),
                Icon(Icons.star, color: isSwitch ? Colors.yellow : null),
                Icon(Icons.star, color: isSwitch ? Colors.yellow : null),
                Icon(Icons.star, color: isSwitch ? Colors.yellow : null),
                Icon(Icons.star, color: isSwitch ? Colors.yellow : null),
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
                  ElevatedButton.icon(
                      onPressed: () {
                        setState(() {
                          isLiked = !isLiked;
                        });
                      },
                      label: const Text('LIKE'),
                      icon:  Icon(

                        isLiked ? Icons.thumb_up : Icons.thumb_down_sharp,
                        size: 15,
                      )),
                  OutlinedButton.icon(
                      onPressed: () {},
                      label: const Text('SHARE'),
                      icon: const Icon(
                        Icons.share,
                        size: 15,
                      )),
                  TextButton.icon(
                    onPressed: () {},
                    label: const Text('COMMENT'),
                    icon: const Icon(
                      Icons.comment,
                      size: 15,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint('a gesture detected');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  ),
                  Text('FIRE'),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  )
                ],
              ),
            ),
            Switch(
                value: isSwitch,
                onChanged: (bool newBool) {
                  setState(() {
                    isSwitch = newBool;
                  });
                }),
            Checkbox(
                value: isChecked,
                onChanged: (bool? newBool) {
                  setState(() {
                    isChecked = newBool;
                  });
                }),
            const SizedBox(
              height: 10,
            ),
            const Divider(),
            const SizedBox(
              height: 30,
            ),
            Image.asset('images/download.jfif'),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
