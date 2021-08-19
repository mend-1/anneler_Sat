import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Colors.white),
      home: NewPage(),
    );
  }
}

class NewPage extends StatefulWidget {
  const NewPage({Key? key}) : super(key: key);

  @override
  _NewPageState createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  DateTime now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 13),
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.grey.shade600,
                    )),
              ),
              const SizedBox(
                width: 100,
              ),
              const Padding(
                padding: const EdgeInsets.only(top: 10, left: 15),
                child: Text(
                  "Tekliflerim",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  height: 60,
                  width: 65,
                  child: listeElemani("assets/moda2.jpeg"),
                ),
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: SizedBox(
                      width: 250,
                      height: 55,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 100),
                            child: Text(
                              "Deniz Beyaz",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 120),
                            child: Text(
                              "Mesaj metni ",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Text("${now.hour.toStringAsFixed(2)}"),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  height: 60,
                  width: 65,
                  child: listeElemani("assets/moda3.jpeg"),
                ),
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: SizedBox(
                      width: 250,
                      height: 55,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 100),
                            child: Text(
                              "Deniz Beyaz",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 120),
                            child: Text(
                              "Mesaj metni ",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Text("${now.hour.toStringAsFixed(2)}"),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  height: 60,
                  width: 65,
                  child: listeElemani("assets/moda4.jpeg"),
                ),
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: SizedBox(
                      width: 250,
                      height: 55,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 100),
                            child: Text(
                              "Deniz Beyaz",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 120),
                            child: Text(
                              "Mesaj metni ",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Text("${now.hour.toStringAsFixed(2)}"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

listeElemani(String imagePath) {
  return Column(
    children: [
      Stack(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                  image: AssetImage(imagePath), fit: BoxFit.cover),
            ),
          ),
        ],
      ),
    ],
  );
}
