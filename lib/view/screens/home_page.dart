import 'package:flutter/material.dart';

void main() {
  runApp(
    const Home(),
  );
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Youtube Console"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Expanded(
              flex: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: CircleAvatar(
                      radius: 40,
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 2,
            ),
            Expanded(
              flex: 70,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration:
                          const BoxDecoration(color: Colors.transparent),
                      child: const Text("First"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration:
                          const BoxDecoration(color: Colors.transparent),
                      child: const Text("Secound"),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 8,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    onTap: () {},
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), hintText: "search Video"),
                  ),
                ),
              ),
              const Expanded(
                flex: 1,
                child: Icon(Icons.search),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
