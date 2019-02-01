import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Funnies',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Funnies!'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 20.0,
            ),
            Expanded(
                child: Padding(
              padding: EdgeInsets.all(16.0),
              child: CardFlipper(),
            )),
            Container(
              width: double.infinity,
              height: 50.0,
              color: Colors.grey[600],
            ),
          ],
        ));
  }
}
class CardFlipper extends StatefulWidget {
  _CardFlipperState createState() => _CardFlipperState();
}

class _CardFlipperState extends State<CardFlipper> {
  List<Widget> _buildCards() {
    return [
      _buildCard(0, 3, 0.0),
       _buildCard(1, 3, 0.0),
        _buildCard(2, 3, 0.0)
    ];
  }
  Widget _buildCard(int cardIndex, int cardCount, double scrollPercent) {
    final cardScrollPercent = scrollPercent / (1/cardCount);
    return FractionalTranslation(
      translation: Offset(cardIndex - cardScrollPercent, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(),
      ));
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragStart: onHorizontalDragStart(),
      onHorizontalDragUpdate: onHorizontalDragUpdate(),
      onHorizontalDragEnd: _onHorizontalDragEnd(),
          child: Stack(
        children: _buildCards(),
   
      ),
    );
  }
}
class Card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset('assets/images/midvale.jpg', fit: BoxFit.cover),
        ),
      ],
    );
  }
}
