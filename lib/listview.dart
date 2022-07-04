import 'package:flutter/material.dart';
import 'quotes.dart';

////////////Styyles
TextStyle quoteStyle = const TextStyle(color: Colors.purple, fontSize: 23);
TextStyle authorStyle = const TextStyle(
    color: Color.fromARGB(255, 0, 0, 0),
    fontSize: 15,
    fontWeight: FontWeight.bold);
////////////

class AppBody extends StatelessWidget {
  const AppBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: 50,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.yellow,
                border: Border.all(
                  width: 3,
                  color: const Color.fromARGB(255, 0, 217, 255),
                ),
                borderRadius: BorderRadius.circular(23)),
            child: ListTile(
                title: RichText(
                    text: TextSpan(children: <TextSpan>[
                  const TextSpan(
                      text: "Quote: ",
                      style: TextStyle(color: Colors.black, fontSize: 23)),
                  TextSpan(
                    text: "${preQuotes[index]['quoteText']}",
                    style: quoteStyle,
                  ),
                ])),
                subtitle: RichText(
                  text: TextSpan(children: <TextSpan>[
                    const TextSpan(
                      text: "Author: ",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: "${preQuotes[index]["quoteAuthor"]}",
                      style: authorStyle,
                    ),
                  ]),
                )),
          );
        });
  }
}
