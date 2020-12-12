import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation',
      home: PageAccueil(),
    );
  }
}

// Page d'accueil

class PageAccueil extends StatelessWidget {
  Future naviguerPageUn(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => PageUn()));
  }
  
  Future naviguerPageDeux(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => PageDeux()));
  }

  Future naviguerPageTrois(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => PageTrois()));
  }

  Future naviguerPageAdieu(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => PageAdieu()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page d''accueil'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
                  'images/logo.jpg',
                  width:270,
                  height:60,
                  fit:BoxFit.fill,
                ),
            Container(height:150),
            Text('Bienvenue!', style: TextStyle(fontSize:16)
            ),
            Container(height:10),
            Text('Pour débuter, entrez votre nom',
            style: TextStyle(
              //color: Colors.black,
              //fontStyle: FontStyle.italic,
              fontSize:16,
              //fontFamily: 'Times New Roman',
              //fontWeight: FontWeight.w100,
              ),
            ),
            Container(height:30),
            Container(
              width:180,
              height: 30,
              child:
              TextFormField(
                  textAlign: TextAlign.left,
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide()),
                  hintText: ('Entrez votre nom ici'),
                  hintStyle: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
            ),
            Container(height:10),
            Container(
              height: 30,
              child:
              RaisedButton(
                textColor: Colors.black,
                color: Colors.grey[75],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  side: BorderSide(color: Colors.black12),
                ),
                child: 
                  Text('Continuer', style:TextStyle(fontSize: 16)),
                onPressed: () {
                  naviguerPageUn(context);
                }
              ),
            ),
            RaisedButton(
              textColor: Colors.white,
              color: Colors.blue,
              child: Text('Page deux'),
              onPressed: () {
                naviguerPageDeux(context);
              },
            ),
            RaisedButton(
              textColor: Colors.white,
              color: Colors.blue,
              child: Text('Page Trois'),
              onPressed: () {
                naviguerPageTrois(context);
              },
            ),
            RaisedButton(
              textColor: Colors.white,
              color: Colors.blue,
              child: Text('Page Adieu'),
              onPressed: () {
                naviguerPageAdieu(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}


// Page Un


class PageUn extends StatelessWidget {
  Future naviguerPageDeux(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => PageDeux()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page un'),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            RaisedButton(
              textColor: Colors.white,
              color: Colors.redAccent,
              child: Text('Suivante'),
              onPressed: () {
                Navigator.pop(context);
                naviguerPageDeux(context);
              },
            ),
            RaisedButton(
              textColor: Colors.white,
              color: Colors.redAccent,
              child: Text('Retourner à la page d''accueil'),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}


// Page Deux


class PageDeux extends StatelessWidget {
  Future naviguerPageTrois(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => PageTrois()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page deux'),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            RaisedButton(
              textColor: Colors.white,
              color: Colors.redAccent,
              child: Text('Completer le questionnaire'),
              onPressed: () {
                Navigator.pop(context);
                naviguerPageTrois(context);
              },
            ),
            RaisedButton(
              textColor: Colors.white,
              color: Colors.redAccent,
              child: Text('Retourner à la page d''accueil'),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}


//Page Trois


class PageTrois extends StatelessWidget {
  Future naviguerPageAdieu(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => PageAdieu()));
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page trois'),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            RaisedButton(
              textColor: Colors.white,
              color: Colors.redAccent,
              child: Text('Soumettre'),
              onPressed: () {
                Navigator.pop(context);
                naviguerPageAdieu(context);
              },
            ),
            RaisedButton(
              textColor: Colors.white,
              color: Colors.redAccent,
              child: Text('Retourner à la page d''accueil'),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}


//Page Adieu


class PageAdieu extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page adieu'),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            RaisedButton(
              textColor: Colors.white,
              color: Colors.redAccent,
              child: Text('Retourner à la page d''accueil'),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
