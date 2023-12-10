import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

void main() {
  runApp(const Mainscreen());
}

class Mainscreen extends StatelessWidget {
  const Mainscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.black,
              title: const Center(
                  child: Text(
                'مترجم لغة الاشارة العربية',
                style: TextStyle(fontSize: 40.0),
              ))),
          body: const Mainbdy()),
    );
  }
}

class Mainbdy extends StatefulWidget {
  const Mainbdy({super.key});

  @override
  State<Mainbdy> createState() => _MainbdyState();
}

class _MainbdyState extends State<Mainbdy> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Expanded(
              child: Iconbutton1(
            icon: const Icon(Icons.camera_alt_rounded),
            onPressed: () {
              Null;
            },
          )),
        ),
        Padding(
          padding: const EdgeInsets.all(100),
          child: Center(
            child: Expanded(
                child: Iconbutton1(
              icon: const Icon(Icons.photo_album),
              onPressed: () {
                Null;
              },
            )),
          ),
        ),
      ],
    );
  }
}

class Iconbutton1 extends StatelessWidget {
  final Icon icon;
  final VoidCallback onPressed;

  const Iconbutton1({
    Key? key,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: icon,
      iconSize: 100,
      onPressed: onPressed,
    );
  }
}
