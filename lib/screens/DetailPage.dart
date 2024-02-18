import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            decoration:
                BoxDecoration(color: const Color.fromRGBO(255, 211, 192, 1)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.home,
                      size: 30,
                      color: Colors.white,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5, bottom: 5),
                      width: MediaQuery.of(context).size.width * 0.65,
                      height: 45,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search",
                            hintStyle: TextStyle(
                                color:
                                    const Color.fromRGBO(255, 118, 118, 0.5)),
                            prefixIcon: Icon(Icons.search,
                                size: 20,
                                color: const Color.fromRGBO(255, 118, 118, 1))),
                      ),
                    ),
                    Icon(Icons.person_off_outlined,
                        size: 30, color: Colors.white)
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
