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
      theme: ThemeData(primaryColor: Colors.grey),
      home: New1(),
    );
  }
}

class New1 extends StatefulWidget {
  const New1({Key? key}) : super(key: key);

  @override
  _New1State createState() => _New1State();
}

class _New1State extends State<New1> {
  String sec = "";
  String secim = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: ListView(
        children: [
          Container(
            color: Colors.white,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 10),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                  ),
                ),
                const Padding(
                  padding: const EdgeInsets.only(top: 5, left: 15),
                  child: Text(
                    "Fiyat Bilgisi",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 15.0, top: 5, bottom: 5),
                child: Text(
                  "Kargo Boyutu",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.assignment_late_outlined, color: Colors.teal),
              ),
            ],
          ),
          Container(
            color: Colors.white,
            height: 380,
            child: Column(
              children: [
                RadioListTile<String>(
                  value: "A",
                  groupValue: sec,
                  activeColor: Colors.teal,
                  onChanged: (deger) {
                    setState(() {
                      sec = deger!;
                      debugPrint("secilen deger: $deger");
                    });
                  },
                  title: const Text(
                    "Mini Paket -6.99",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  subtitle: const Text(
                    "Kolye, b??stiyer, mayo, telefon k??l??f??, saat,"
                    "tayt, oje, haf??za kart??, makyaj f??r??as?? gibi ??r??nler",
                    style: TextStyle(fontSize: 16),
                  ),
                  secondary: Image.asset("assets/mini.png"),
                ),
                const Divider(
                  height: 10,
                  color: Colors.black,
                ),
                RadioListTile<String>(
                  value: "B",
                  groupValue: sec,
                  activeColor: Colors.teal,
                  onChanged: (deger) {
                    setState(() {
                      sec = deger!;
                      debugPrint("secilen deger: $deger");
                    });
                  },
                  title: const Text(
                    "K??????k Paket - 8.99TL",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  subtitle: const Text(
                    "Jean, g??mlek, k??sa elbise, tulum, t??ra??"
                    "makinas??, telefon, forma, etek gibi ??r??nler",
                    style: TextStyle(fontSize: 16),
                  ),
                  secondary: Image.asset("assets/k??c??k.png"),
                ),
                const Divider(
                  height: 10,
                  color: Colors.black,
                ),
                RadioListTile<String>(
                  value: "C",
                  groupValue: sec,
                  activeColor: Colors.teal,
                  onChanged: (deger) {
                    setState(() {
                      sec = deger!;
                      debugPrint("secilen deger: $deger");
                    });
                  },
                  title: const Text(
                    "Orta Paket - 11.99TL",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  subtitle: const Text(
                    "Ceket, spor ayakkab??, abiye, kazak, sa??"
                    "d??zle??tirici, bilgisayar ??antas??, playstation"
                    "gibi ??r??nler",
                    style: TextStyle(fontSize: 16),
                  ),
                  secondary: Image.asset("assets/orta.png"),
                ),
                const Divider(
                  height: 10,
                  color: Colors.black,
                ),
                RadioListTile<String>(
                  value: "D",
                  groupValue: sec,
                  activeColor: Colors.teal,
                  onChanged: (deger) {
                    setState(() {
                      sec = deger!;
                      debugPrint("secilen deger: $deger");
                    });
                  },
                  title: const Text(
                    "B??y??k Paket - 15.99TL",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  subtitle: const Text(
                    "Bebek arabas??, lambader, yaz??c??, bavul, "
                    "yorgan, ekmek makinas?? gibi ??r??nler",
                    style: TextStyle(fontSize: 16),
                  ),
                  secondary: Image.asset("assets/buyuk.png"),
                ),
              ],
            ),
          ),
          const Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 5.0, bottom: 5.0),
            child: Text(
              "Kargo",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            color: Colors.white,
            height: 135,
            child: Column(
              children: [
                const Padding(
                  padding:
                      const EdgeInsets.only(left: 10.0, right: 250, top: 5),
                  child: Text(
                    "Kargoyu kim ??der?",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                RadioListTile<String>(
                  value: "X",
                  groupValue: secim,
                  activeColor: Colors.teal,
                  onChanged: (deger) {
                    setState(() {
                      secim = deger!;
                      debugPrint("secilen deger: $deger");
                    });
                  },
                  title: const Text(
                    "Al??c??",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                const SizedBox(
                  width: 50,
                ),
                RadioListTile<String>(
                  value: "y",
                  groupValue: secim,
                  activeColor: Colors.teal,
                  onChanged: (deger) {
                    setState(() {
                      secim = deger!;
                      debugPrint("secilen deger: $deger");
                    });
                  },
                  title: const Text(
                    "Sat??c??",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 5.0, bottom: 5.0),
            child: Text(
              "Fiyat",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            color: Colors.white,
            height: 145,
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 15.0,
                        top: 8,
                      ),
                      child: Text(
                        "??r??n?? ka??a ald??n?",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      width: 190,
                    ),
                    Text(
                      "0 TL",
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  height: 10,
                  color: Colors.black,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 15.0,
                        top: 8,
                      ),
                      child: Text(
                        "Ne kadara sat??yorsun?",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      width: 160,
                    ),
                    Text(
                      "0 TL",
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  height: 10,
                  color: Colors.black,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 15.0,
                        top: 8,
                      ),
                      child: Text(
                        "Kazanc??n",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.assignment_late_outlined,
                          color: Colors.teal),
                    ),
                    const SizedBox(
                      width: 200,
                    ),
                    const Text(
                      "-- TL",
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
