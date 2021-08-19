import 'package:annelersatiyor/detay.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  late TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavMenu(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.textsms_outlined,
              size: 30,
            ),
            onPressed: () {},
            color: Colors.black,
          ),
        ],
      ),
      body: ListView(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 0.0),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Detay()));
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/kadın.jpeg"),
                              fit: BoxFit.contain),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      "Kadın",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Detay()));
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/el emegi.jpeg"),
                              fit: BoxFit.contain),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      "El Emeği",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Detay()));
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/cocuk.jpeg"),
                              fit: BoxFit.contain),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      "Çocuk",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Detay()));
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/anne.jpeg"),
                              fit: BoxFit.contain),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      "Anne",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Detay()));
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/ev ve yasam.jpeg"),
                              fit: BoxFit.contain),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      "Ev ve\n"
                      "yaşam",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Detay()));
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/elektronik.jpeg"),
                              fit: BoxFit.contain),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      "Elektronik",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 95),
                child: ExpansionTile(
                  title: Text("Giyim"),
                  collapsedIconColor: Colors.black,
                  backgroundColor: Colors.grey.shade400,
                  trailing: Icon(Icons.arrow_drop_down_circle_outlined),
                  children: [
                    Container(
                      height: 60,
                      //width: double.infinity,
                      width: 300,
                      child: ListView(
                        padding: const EdgeInsets.only(
                            bottom: 0, right: 10, left: 10, top: 0),
                        scrollDirection: Axis.horizontal,
                        children: [
                          listeElemani("assets/moda2.jpeg"),
                          const SizedBox(
                            width: 10,
                          ),
                          listeElemani("assets/moda1.jpeg"),
                          const SizedBox(
                            width: 10,
                          ),
                          listeElemani("assets/moda5.jpeg"),
                          const SizedBox(
                            width: 10,
                          ),
                          listeElemani("assets/moda3.jpeg"),
                          const SizedBox(
                            width: 10,
                          ),
                          listeElemani("assets/moda2.jpeg"),
                          const SizedBox(
                            width: 10,
                          ),
                          listeElemani("assets/moda1.jpeg"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 95),
                child: ExpansionTile(
                  title: Text("Çanta"),
                  collapsedIconColor: Colors.black,
                  backgroundColor: Colors.grey.shade400,
                  trailing: Icon(Icons.arrow_drop_down_circle_outlined),
                  children: [
                    Container(
                      height: 60,
                      //width: double.infinity,
                      width: 300,
                      child: ListView(
                        padding: const EdgeInsets.only(
                            bottom: 0, right: 10, left: 10, top: 0),
                        scrollDirection: Axis.horizontal,
                        children: [
                          listeElemani("assets/moda2.jpeg"),
                          const SizedBox(
                            width: 10,
                          ),
                          listeElemani("assets/moda1.jpeg"),
                          const SizedBox(
                            width: 10,
                          ),
                          listeElemani("assets/moda5.jpeg"),
                          const SizedBox(
                            width: 10,
                          ),
                          listeElemani("assets/moda3.jpeg"),
                          const SizedBox(
                            width: 10,
                          ),
                          listeElemani("assets/moda2.jpeg"),
                          const SizedBox(
                            width: 10,
                          ),
                          listeElemani("assets/moda1.jpeg"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 95),
                child: ExpansionTile(
                  title: Text("Ayakkabı"),
                  collapsedIconColor: Colors.black,
                  backgroundColor: Colors.grey.shade400,
                  trailing: Icon(Icons.arrow_drop_down_circle_outlined),
                  children: [
                    Container(
                      height: 60,
                      //width: double.infinity,
                      width: 300,
                      child: ListView(
                        padding: const EdgeInsets.only(
                            bottom: 0, right: 10, left: 10, top: 0),
                        scrollDirection: Axis.horizontal,
                        children: [
                          listeElemani("assets/moda2.jpeg"),
                          const SizedBox(
                            width: 10,
                          ),
                          listeElemani("assets/moda1.jpeg"),
                          const SizedBox(
                            width: 10,
                          ),
                          listeElemani("assets/moda5.jpeg"),
                          const SizedBox(
                            width: 10,
                          ),
                          listeElemani("assets/moda3.jpeg"),
                          const SizedBox(
                            width: 10,
                          ),
                          listeElemani("assets/moda2.jpeg"),
                          const SizedBox(
                            width: 10,
                          ),
                          listeElemani("assets/moda1.jpeg"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 95),
                child: ExpansionTile(
                  title: Text("Aksesuar"),
                  collapsedIconColor: Colors.black,
                  backgroundColor: Colors.grey.shade400,
                  trailing: Icon(Icons.arrow_drop_down_circle_outlined),
                  children: [
                    Container(
                      height: 60,
                      //width: double.infinity,
                      width: 300,
                      child: ListView(
                        padding: const EdgeInsets.only(
                            bottom: 0, right: 10, left: 10, top: 0),
                        scrollDirection: Axis.horizontal,
                        children: [
                          listeElemani("assets/moda2.jpeg"),
                          const SizedBox(
                            width: 10,
                          ),
                          listeElemani("assets/moda1.jpeg"),
                          const SizedBox(
                            width: 10,
                          ),
                          listeElemani("assets/moda5.jpeg"),
                          const SizedBox(
                            width: 10,
                          ),
                          listeElemani("assets/moda3.jpeg"),
                          const SizedBox(
                            width: 10,
                          ),
                          listeElemani("assets/moda2.jpeg"),
                          const SizedBox(
                            width: 10,
                          ),
                          listeElemani("assets/moda1.jpeg"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 95),
                child: ExpansionTile(
                  title: Text("Kozmetik"),
                  collapsedIconColor: Colors.black,
                  backgroundColor: Colors.grey.shade400,
                  trailing: Icon(Icons.arrow_drop_down_circle_outlined),
                  children: [
                    Container(
                      height: 60,
                      //width: double.infinity,
                      width: 300,
                      child: ListView(
                        padding: const EdgeInsets.only(
                            bottom: 0, right: 10, left: 10, top: 0),
                        scrollDirection: Axis.horizontal,
                        children: [
                          listeElemani("assets/moda2.jpeg"),
                          const SizedBox(
                            width: 10,
                          ),
                          listeElemani("assets/moda1.jpeg"),
                          const SizedBox(
                            width: 10,
                          ),
                          listeElemani("assets/moda5.jpeg"),
                          const SizedBox(
                            width: 10,
                          ),
                          listeElemani("assets/moda3.jpeg"),
                          const SizedBox(
                            width: 10,
                          ),
                          listeElemani("assets/moda2.jpeg"),
                          const SizedBox(
                            width: 10,
                          ),
                          listeElemani("assets/moda1.jpeg"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 95),
                child: ExpansionTile(
                  title: Text("İç giyim"),
                  collapsedIconColor: Colors.black,
                  backgroundColor: Colors.grey.shade400,
                  trailing: Icon(Icons.arrow_drop_down_circle_outlined),
                  children: [
                    Container(
                      height: 60,
                      //width: double.infinity,
                      width: 300,
                      child: ListView(
                        padding: const EdgeInsets.only(
                            bottom: 0, right: 10, left: 10, top: 0),
                        scrollDirection: Axis.horizontal,
                        children: [
                          listeElemani("assets/moda2.jpeg"),
                          const SizedBox(
                            width: 10,
                          ),
                          listeElemani("assets/moda1.jpeg"),
                          const SizedBox(
                            width: 10,
                          ),
                          listeElemani("assets/moda5.jpeg"),
                          const SizedBox(
                            width: 10,
                          ),
                          listeElemani("assets/moda3.jpeg"),
                          const SizedBox(
                            width: 10,
                          ),
                          listeElemani("assets/moda2.jpeg"),
                          const SizedBox(
                            width: 10,
                          ),
                          listeElemani("assets/moda1.jpeg"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Theme bottomNavMenu() {
    return Theme(
      data: ThemeData(),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
              color: Colors.black,
              size: 30,
            ),
            title: Text(
              "Anasayfa",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
            ),
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Detay()));
              },
              child: const Icon(
                Icons.shopping_basket_outlined,
                color: Colors.black,
                size: 30,
              ),
            ),
            title: const Text("Alışveriş",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 13)),
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Detay()));
              },
              child: const Icon(
                Icons.add_circle_outline_sharp,
                color: Colors.black,
                size: 30,
              ),
            ),
            title: const Text("Ekle",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 13)),
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Detay()));
              },
              child: const Icon(
                Icons.people_outline,
                color: Colors.black,
                size: 30,
              ),
            ),
            title: const Text("Topluluk",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 13)),
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Detay()));
              },
              child: const Icon(
                Icons.perm_identity,
                color: Colors.black,
                size: 30,
              ),
            ),
            title: const Text("Kullanıcı",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 13)),
          ),
        ],
        type: BottomNavigationBarType.fixed,
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
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                  image: AssetImage(imagePath), fit: BoxFit.cover),
            ),
          ),
        ],
      ),
    ],
  );
}
