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
      home: Mesage(),
    );
  }
}

class Mesage extends StatefulWidget {
  const Mesage({Key? key}) : super(key: key);

  @override
  _MesageState createState() => _MesageState();
}

class _MesageState extends State<Mesage> {
  DateTime now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          Stack(
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
                    width: 180,
                  ),
                  const Padding(
                    padding: const EdgeInsets.only(top: 10, left: 15),
                    child: Text(
                      "Product Name",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: size.height * 0.3,
                child: Stack(
                  children: [
                    Container(
                      height: size.height * 0.3 - 50,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/moda3.jpeg"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(30),
                            bottomLeft: Radius.circular(30),
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Center(
            child: Text(
                "${now.day}  ,  ${now.month.toString()} , ${now.hour.toStringAsFixed(2)}"),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 30),
                child: Container(
                  height: 50,
                  width: 60,
                  child: ListView(
                    padding: const EdgeInsets.only(right: 10, left: 10),
                    children: [
                      listeElemani("assets/moda2.jpeg"),
                    ],
                  ),
                ),
              ),
              Container(
                height: 50,
                // width: 200,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                  color: Colors.teal,
                ),
                child: const Center(
                    child: Padding(
                  padding: EdgeInsets.only(left: 20, right: 210),
                  child: Text("Teklif...", style: TextStyle(fontSize: 16)),
                )),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 100, right: 30),
            child: Container(
              height: 50,
              // width: 200,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
                color: Colors.grey,
              ),
              child: const Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 2.5, right: 200),
                  child: Text(
                    "Cevap...",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 150,
          ),
          const SizedBox(
            height: 50,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Card(
                color: Colors.grey,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 50, top: 10, bottom: 10),
                  child: const TextField(
                    decoration: InputDecoration(hintText: "Mesaj Yaz"),
                  ),
                ),
              ),
            ),
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
