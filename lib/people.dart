import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_svg/flutter_svg.dart' ;
import 'package:memoleeds/people.dart';

import 'package:timeline_tile/timeline_tile.dart';



class People extends StatelessWidget {

  @override
  Widget build(BuildContext context) {


    return  MaterialApp(

      debugShowCheckedModeBanner: false,


      title: 'MEMO, LEEDS',

      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xffDCB8E4),
          foregroundColor: Colors.white,
        ),
      ),




      home: const  RandomWords(),
    );
  }
}


class RandomWords extends StatefulWidget {
  const RandomWords({ Key? key }) : super(key: key);

  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {

  final _suggestions = <WordPair>[];

  final _biggerFont = const TextStyle(fontSize: 18.0);

  final _saved = <WordPair>{};



  int selectedIndex = 0;

  final screen = [
  ];

  var _pageController = PageController();










  void _pushSaved() {


    Navigator.of(context).push(



      MaterialPageRoute<void>(
        builder: (context) {
          final tiles = _saved.map(
                (pair) {
              return ListTile(
                title: Text(
                  pair.asPascalCase,
                  style: _biggerFont,
                ),
              );
            },
          );
          final divided = tiles.isNotEmpty
              ? ListTile.divideTiles(
            context: context,
            tiles: tiles,
          ).toList()
              : <Widget>[];

          return Scaffold(
            appBar: AppBar(
              title: const Text('Favorite MEMO'),
            ),
            body: ListView(children: divided),
          );
        },
      ),







    );


  }


  @override


  Widget build(BuildContext context) {
    return Scaffold(




      body:




      ListView.builder(


        padding: const EdgeInsets.all(16.0),
     itemBuilder: /*1*/ (context, i) {
    if (i.isOdd) return const Divider();
    /*2*/

      final index = i ~/ 2; /*3*/
      if (index >= _suggestions.length) {
     _suggestions.addAll(generateWordPairs().take(10)); /*4*/
      }
     return _buildRow(_suggestions[index]);
       },
  ),





    ) ;

        }



  Widget _buildRow(WordPair pair) {
    final alreadySaved = _saved.contains(pair);
    return ListTile(


        leading: Icon(Icons.person,   color:Color(0xffDCB8E4) ),

      subtitle:  Text('2022년 1월 1일'),

      title: Text(

          pair.asPascalCase,
          style: _biggerFont,
        ),
        trailing: Icon(
          alreadySaved ? Icons.favorite : Icons.favorite_border,
          color: alreadySaved ? Colors.red : null,
          semanticLabel: alreadySaved ? 'Remove from saved' : 'Save',
        ),

        onTap: () {
          setState(() {
            if (alreadySaved) {
              _saved.remove(pair);
            } else {
              _saved.add(pair);
            }
          });
        });
  }





}


