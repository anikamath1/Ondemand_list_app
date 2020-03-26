import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class ListApp extends StatefulWidget {
  @override
  _ListAppState createState() {
    return _ListAppState();
  }
}

class _ListAppState extends State<ListApp> {
  final _suggestionsList = <WordPair>[];
  final fontStyle = const TextStyle(fontSize: 20.0);
  @override
  Widget build(BuildContext context) {
    print("Build function called");

    // TODO: implement build
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: ListView.builder(
          padding: EdgeInsets.all(10),
          itemBuilder: (context, i) {
            print("$i is the i value");
            if (i.isOdd) return Divider();
            var index = i ~/ 2;
            if (index >= _suggestionsList.length) {
              _suggestionsList.addAll(generateWordPairs().take(10));
            }
            //return Text(_suggestionsList[index].toString());
            return (ListTile(
              title: Text(
                _suggestionsList[index].asPascalCase.toString(),
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),
            ));
          },
        ),
      ),
    );
  }
}
