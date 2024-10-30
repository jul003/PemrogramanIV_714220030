import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page')),
        drawer: Drawer(
          child: ListView(
            children: const [
              ListTile(title: Text('Home Page')),
              ListTile(title: Text('About Page')),
            ],
          ),
        ),
      body: Roww(),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Settings'),
      ]),
    );
  }

  
}
class Heading extends StatelessWidget {
final String text;
const Heading({Key? key, required this.text}) : super(key: key);
@override
Widget build(BuildContext context) {
return Text(
text,
style: const TextStyle(
fontSize: 28.0,
fontWeight: FontWeight.bold,
),
);
}
}

class BiggerText extends StatefulWidget {
final String teks;
const BiggerText({Key? key, required this.teks}) : super(key: key);
@override
State<BiggerText> createState() => _BiggerTextState();
}
class _BiggerTextState extends State<BiggerText> {
double _textSize = 16.0;
@override
Widget build(BuildContext context) {
return Column(
mainAxisAlignment: MainAxisAlignment.center,
children: <Widget>[
Text(
widget.teks,
style: TextStyle(fontSize: _textSize),
),
ElevatedButton(
child: Text(_textSize == 16.0 ? "Perbesar" : "Perkecil"),
onPressed: () {
setState(() {
_textSize = _textSize == 16.0 ? 32.0 : 16.0;
});
},
)
],
);
}
}

class MyContainer extends StatelessWidget {
const MyContainer({Key? key}) : super(key: key);
@override
Widget build(BuildContext context) {
return Container(
decoration: BoxDecoration(
  color: Colors.red,
  border: Border.all(color: Colors.green,width: 3,),
  borderRadius: BorderRadius.circular(15),
  
),
child: const Text(
'Hi',
style: TextStyle(fontSize: 40),
),
);
}
}



class Paddingkieu extends StatelessWidget {
  const Paddingkieu({super.key});

  @override
  Widget build(BuildContext context) {
  return Padding(
padding: const EdgeInsets.all(30),
child: const Text('Ini Padding'),
);
  }
}

class Centerkieu extends StatelessWidget {
  const Centerkieu({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: const Text('Text berada di tengah'),
    );
  }
}

class column extends StatelessWidget {
  const column({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget> [
          Text(
            'ini Judul',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          Text('Universitas Logistik dan Bisnis International (ULBI)'),
        ]
    );
  }
}

class Roww extends StatelessWidget {
  const Roww({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        Text('mainAxisAlignment: MainAxisAlignment.spaceEvenly'),
        SizedBox(height: 10),
      Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget> [
        Icon(Icons.share),
        Icon(Icons.thumb_up),
        Icon(Icons.thumb_down),
      ],
    ),
    SizedBox(height: 20),
    Text('mainAxisAlignment: MainAxisAlignment.spaceAround'),
    SizedBox(height: 10),
     Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget> [
        Icon(Icons.share),
        Icon(Icons.thumb_up),
        Icon(Icons.thumb_down),
      ],
    ),
    SizedBox(height: 20),
    Text('mainAxisAlignment: MainAxisAlignment.spaceBetween'),
    SizedBox(height: 10),
     Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget> [
        Icon(Icons.share),
        Icon(Icons.thumb_up),
        Icon(Icons.thumb_down),
      ],
    ),
    SizedBox(height: 20),
    Text('mainAxisAlignment: MainAxisAlignment.Start'),
    SizedBox(height: 10),
     Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget> [
        Icon(Icons.share),
        Icon(Icons.thumb_up),
        Icon(Icons.thumb_down),
      ],
    ),
    SizedBox(height: 20),
    Text('mainAxisAlignment: MainAxisAlignment.center'),
    SizedBox(height: 10),
     Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget> [
        Icon(Icons.share),
        Icon(Icons.thumb_up),
        Icon(Icons.thumb_down),
      ],
    ),
    SizedBox(height: 20),
    Text('mainAxisAlignment: MainAxisAlignment.end'),
    SizedBox(height: 10),
     Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget> [
        Icon(Icons.share),
        Icon(Icons.thumb_up),
        Icon(Icons.thumb_down),
      ],
    ),
    
      ],
    ); 
  }
}