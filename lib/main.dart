import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(character: 'Melisandra', text: 'The night is dark and full of terrors'),
    Quote(character: 'Dany', text: 'All men must die'),
    Quote(character: 'Little finger', text: 'Chaos is a ladder'),];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Game of Thrones'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quotes) => Text(
            '${quotes.text} - ${quotes.character}')).toList(),
      ),
    );
  }
}

