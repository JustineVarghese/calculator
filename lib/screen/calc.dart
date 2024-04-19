import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 350, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.query_builder,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.keyboard,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.calculate,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 110, bottom: 5),
                    child: Icon(
                      Icons.backspace_outlined,
                      color: Colors.white54,
                      size: 20,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      num(text: "C"),
                      num(text: "()"),
                      num(text: '%'),
                      num(text: '/')
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      num(text: "7"),
                      num(text: "8"),
                      num(text: '9'),
                      num(text: '*')
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      num(text: "4"),
                      num(text: "5"),
                      num(text: '6'),
                      num(text: '-')
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      num(text: "1"),
                      num(text: "2"),
                      num(text: '3'),
                      num(text: '+')
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      num(text: "+/-"),
                      num(text: "0"),
                      num(text: '.'),
                      num(text: '=')
                    ],
                  )
                ],
              ),
            ),
          ],
        ));
  }
}

class num extends StatelessWidget {
  const num({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 75, 72, 72),
            shape: CircleBorder(),
            padding: EdgeInsets.all(20)),
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18),
        ));
  }
}
