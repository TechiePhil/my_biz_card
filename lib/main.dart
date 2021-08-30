import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyBizCard'),
        centerTitle: true,
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            _getCard(),
            Positioned(
              right: 10,
              top: 10,
              child: _getAvatar()
            )
          ]
        )
      ),
    );
  }
  
  Widget _getCard() {
    return Container(
      margin: EdgeInsets.all(30),
      height: 230,
      width: 400,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(60),
          topRight: Radius.circular(50),
          bottomRight: Radius.circular(50),
          bottomLeft: Radius.circular(50)
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Text(
              'Name: Philips Jonah',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Email: jonahphilips90@gmail.com',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.person_outline, color: Colors.white),
                Text('Build Apps with Me!', style: TextStyle(
                  color: Colors.white
                ))
              ]
            )
          ]
        ),
      )
    );
  }
  
  Widget _getAvatar() {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.all(Radius.circular(100)),
        image: DecorationImage(
          image: NetworkImage(
            'https://picsum.photos/300/300',
          ),
          fit: BoxFit.cover,
        )
      ),
    );
  }
}
