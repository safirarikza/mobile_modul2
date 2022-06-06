import 'package:flutter/material.dart';
import 'package:kegiatan1_2/halaman_dua.dart';

class HalamanSatu extends StatelessWidget {
  const HalamanSatu({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            "GoChats",
            style: TextStyle(color: Colors.black),
          )),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
            width: double.infinity,
            height: 600,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Quick Actions",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Flex(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          direction: Axis.horizontal,
                          children: [
                            Column(
                              children: [
                                ClipOval(
                                  child: Material(
                                    color: Colors.blue, // Button color
                                    child: InkWell(
                                      splashColor: Colors.red, // Splash color
                                      onTap: () {
                                        return;
                                      },
                                      child: const SizedBox(
                                          width: 56,
                                          height: 56,
                                          child: Icon(Icons.message)),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                const Text("Inbox")
                              ],
                            ),
                            Column(
                              children: [
                                ClipOval(
                                  child: Material(
                                    color: Colors.blue, // Button color
                                    child: InkWell(
                                      splashColor: Colors.red, // Splash color
                                      onTap: () {
                                        return;
                                      },
                                      child: const SizedBox(
                                          width: 56,
                                          height: 56,
                                          child: Icon(Icons.payment)),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                const Text("Pay")
                              ],
                            ),
                            Column(
                              children: [
                                ClipOval(
                                  child: Material(
                                    color: Colors.blue, // Button color
                                    child: InkWell(
                                      splashColor: Colors.red, // Splash color
                                      onTap: () {
                                        return;
                                      },
                                      child: const SizedBox(
                                          width: 56,
                                          height: 56,
                                          child: Icon(Icons.help)),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                const Text("Help")
                              ],
                            )
                          ],
                        )),
                    const Text("Your chats",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Container(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const HalamanDua(title: "Fira")));
                              },
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      margin: const EdgeInsets.only(right: 16.0),
                                      width: 50.0,
                                      height: 50.0,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: NetworkImage(
                                                  "https://pbs.twimg.com/media/EO17SHHWoAA9KAJ.jpg")))),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "Fira",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Lagi ngapain?",
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    margin: const EdgeInsets.only(right: 16.0),
                                    width: 50.0,
                                    height: 50.0,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                                "https://pbs.twimg.com/media/EO17SHHWoAA9KAJ.jpg")))),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Sapi",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Halo mbak..",
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        )),
                  ]),
            )),
      ),
    );
  }
}
