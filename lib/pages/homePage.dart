import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:parcialview/constants.dart';
import 'package:parcialview/model/Weather.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../model/BedRoom.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: kSecondaryColor,
                          borderRadius: BorderRadius.circular(12)),
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: const [
                          ImageIcon(
                            AssetImage("assets/ubicacion.png"),
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Home",
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                        ],
                      ),
                    ),
                    const CircleAvatar(
                      backgroundImage: AssetImage("assets/profile.jpg"),
                      radius: 20,
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Good Evening",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 30,
                        letterSpacing: 2),
                  ),
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Let’s set things up to make you comfy tonight",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: weathers.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        childAspectRatio: 0.5,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 10,
                      ),
                      itemBuilder: (BuildContext context, index) {
                        return Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: ExactAssetImage('assets/fondo1.jpg'),
                              fit: BoxFit.contain,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: Column(
                            children: [
                              const Spacer(),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 10, 10, 5),
                                  child: Text(
                                    weathers[index].temp,
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 10, 10, 20),
                                  child: Text(
                                    weathers[index].city,
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
                const SizedBox(
                  height: 15,
                ),
                const LinearProgressIndicator(
                  value: 0.2,
                  minHeight: 3,
                  valueColor: AlwaysStoppedAnimation(Colors.blue),
                  backgroundColor: kSecondaryColor,
                  semanticsLabel: 'Linear progress indicator',
                ),
                const SizedBox(
                  height: 15,
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Bedroom",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 170,
                  width: MediaQuery.of(context).size.width,
                  child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: bedRoom.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        childAspectRatio: 1.1,
                        mainAxisSpacing: 15,
                        crossAxisSpacing: 10,
                      ),
                      itemBuilder: (BuildContext context, index) {
                        return Container(
                          decoration: const BoxDecoration(
                            color: kSecondaryColor,
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 15,
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                  child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border:
                                              Border.all(color: Colors.white),
                                          color: bedRoom[index].on == true
                                              ? Colors.white
                                              : Colors.transparent),
                                      child: Image.asset(
                                        bedRoom[index].iconAsset,
                                        color: bedRoom[index].on == true
                                            ? Colors.black
                                            : Colors.white,
                                      )),
                                ),
                              ),
                              const Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                                  child: Text(
                                    "Bedroom",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 5, 20, 0),
                                  child: Text(
                                    bedRoom[index].title,
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 10, 20, 0),
                                  child: Text(
                                    bedRoom[index].on == true
                                        ? "On - ${bedRoom[index].temp}"
                                        : "Off - ${bedRoom[index].temp}",
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: 100,
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: ExactAssetImage('assets/fondo2.jpg'),
                        fit: BoxFit.contain,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      children: const [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 25, 10, 5),
                            child: Text(
                              "Power Usage",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 10, 5),
                            child: Text(
                              "27 kWh - 18%",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const Padding(
          padding: EdgeInsets.all(8.0),
          child: GNav(
            tabBorderRadius: 10,
            hoverColor: Colors.white,
            haptic: true,
            color: Colors.white,
            gap: 8,
            iconSize: 23,
            tabs: [
              GButton(
                icon: LineIcons.home,
                text: "Home",
                backgroundColor: kSecondaryColor,
                iconActiveColor: Colors.white,
                textColor: Colors.white,
              ),
              GButton(
                icon: LineIcons.laptopCode,
                text: "Laptop",
                backgroundColor: kSecondaryColor,
                iconActiveColor: Colors.white,
                textColor: Colors.white,
              ),
              GButton(
                icon: LineIcons.cog,
                text: "Config",
                backgroundColor: kSecondaryColor,
                iconActiveColor: Colors.white,
                textColor: Colors.white,
              )
            ],
          ),
        ));
  }
}
