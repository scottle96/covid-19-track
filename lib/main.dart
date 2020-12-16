import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      home: Scaffold(
        body: PageAccueil(),
      ),
    );
  }
}

// Create a Form widget.
class PageAccueil extends StatefulWidget {
  @override
  PageAccueilState createState() {
    return PageAccueilState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class PageAccueilState extends State<PageAccueil> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();
  final myController = TextEditingController();
  var texteTemp = "";

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(height:150),
          Container(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                    child:                  
                      Image.asset(
                        'images/logo.jpg',
                        width:300,
                        height:60,
                        fit:BoxFit.contain,
                        //alignment: Alignment.center,
                      ),
                )
              ),
            Container(height:120),
            Text('Bienvenue!', style: TextStyle(fontSize:16)
            ),
            Container(height:10),
            Text('Pour débuter, entrez votre nom',
            style: TextStyle(
              //color: Colors.black,
              //fontStyle: FontStyle.italic,
              fontSize:18,
              //fontFamily: 'Times New Roman',
              //fontWeight: FontWeight.w100,
              ),
            ),
            Container(height:30),
            Container(
              width:220,
              height: 30,
              child:
              TextFormField(
                  textAlign: TextAlign.left,
                  textAlignVertical: TextAlignVertical.bottom,
                  controller: myController,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Veuillez ne laisser pas le champ vide';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide()),
                    hintText: ('Entrez votre nom ici'),
                    hintStyle: TextStyle(fontStyle: FontStyle.italic),
                  ),
              ),
            ),
            Container(height:15),
            Container(
              height: 30,
              child: RaisedButton(
                    textColor: Colors.black,
                    color: Colors.grey[75],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      side: BorderSide(color: Colors.black12),
                    ),
                    child: 
                      Text('Continuer', style:TextStyle(fontSize: 16)),
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        texteTemp = myController.text;                      
                        _naviguerPageUn(context);
                        /*return showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              // Retrieve the text the user has entered by using the
                              // TextEditingController.
                              content: Text("Bienvenue, $texteTemp!"),
                            );
                          },
                        );*/                                              
                      }                  
                    }
              )
            ),
        ],
      ),
    );
  }
  void _naviguerPageUn(BuildContext context) {
  String texteTemp = myController.text;
  Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PageUn(text: texteTemp),
      ));
  }
}

// Page Un

class PageUn extends StatelessWidget {
  final String text;
  PageUn({Key key, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(height:110),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              Container(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                    child:                  
                      Image.asset(
                        'images/logo.jpg',
                        width:310,
                        height:60,
                        fit:BoxFit.contain,
                        //alignment: Alignment.center,
                      ),
                )
              )
              ]
            ),
            Container(height: 17.5),
            Container(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 7.5),
                  child: 
                  Text("Bienvenue $text!",
                    style: TextStyle(fontSize: 16)
                  ),
              )
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 7.5),
                  child: 
                  Text("Pour accéder au campus aujourd'hui, tu dois compléter le questionnaire.",
                    style: TextStyle(fontSize: 16)
                  ),
              )
            ),
            Container(height:15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                Container(
                  height: 25,
                  width: 310,
                  child:
                  RaisedButton(
                    textColor: Colors.black,
                          color: Colors.grey[75],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            side: BorderSide(color: Colors.black12),
                          ),
                    child: Text('Completer le questionnaire',
                            style: TextStyle(fontSize: 16)),
                    onPressed: () {
                      Navigator.pop(context);
                      _naviguerPageDeux(context);
                    },
                  )
                ),
              ]
            ),
          ],
        ),
      ),
    );
  }
  void _naviguerPageDeux(BuildContext context) {
  String texteTemp = text;
  Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PageDeux(text: texteTemp),
      ));
  }
}


// Page Deux


class PageDeux extends StatelessWidget {
  final String text;
  PageDeux({Key key, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(height:50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              Container(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                    child:                  
                      Image.asset(
                        'images/logo.jpg',
                        width:310,
                        height:60,
                        fit:BoxFit.contain,
                        //alignment: Alignment.center,
                      ),
                )
              )
              ]
            ),
            Container(height: 17.5),
            Container(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 7.5),
                  child: 
                  Text("Formulaire COVID-19 pour $text",
                    style: TextStyle(fontSize: 16)
                  ),
              )
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 7.5),
                  child: 
                  Text("Date 2020-11-25",
                    style: TextStyle(fontSize: 16)
                  ),
              )
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                  child: 
                  Text("Aujourd'hui, je me sens:",
                    style: TextStyle(fontSize: 16)
                  ),
              )
            ),
            
            //icônes

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FavoriteWidget(),
                FavoriteWidget(),
                FavoriteWidget(),
              ],
            ),
            Row(
              children: <Widget> [
                Container(
                  width: 190,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 7.5),
                      child: 
                      Text("J'ai voyagé hors du Canada dans les derniers 14 jours:",
                        style: TextStyle(fontSize: 16)
                      ),
                  )
                ),
                FavoriteWidget(),
                FavoriteWidget(),
                Container()
              ]
            ),
            Row(
              children: <Widget> [
                Container(
                  width: 190,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 7.5),
                      child: 
                      Text("J'ai été en contacte avec un individu qui a eu COVID-19 dans les derniers 14 jours:",
                        style: TextStyle(fontSize: 16)
                      ),
                  )
                ),
                FavoriteWidget(),
                FavoriteWidget(),
              ]
            ),
            Container(height:15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                Container(
                  height: 25,
                  width: 125,
                  child:
                  RaisedButton(
                    textColor: Colors.black,
                          color: Colors.grey[75],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            side: BorderSide(color: Colors.black12),
                          ),
                    child: Text('Soumettre',
                            style: TextStyle(fontSize: 16)),
                    onPressed: () {
                      Navigator.pop(context);
                      _naviguerPageUn(context);
                    },
                  )
                ),
              ]
            ),
          ],
        ),
      ),
    );
  }
  void _naviguerPageUn(BuildContext context) {
  String texteTemp = text;
  Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PageUn(text: texteTemp),
      ));
  }
}

class FavoriteWidget extends StatefulWidget {
  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = true;
  int _favoriteCount = 41;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            padding: EdgeInsets.all(0),
            alignment: Alignment.centerRight,
            icon: (_isFavorited ? Icon(Icons.star) : Icon(Icons.star_border)),
            color: Colors.red[500],
            onPressed: _toggleFavorite,
          ),
        ),
      ],
    );
  }
  void _toggleFavorite() {
  setState(() {
    if (_isFavorited) {
      _favoriteCount -= 1;
      _isFavorited = false;
    } else {
      _favoriteCount += 1;
      _isFavorited = true;
    }
  });
}
}
/*
            RaisedButton(
              textColor: Colors.white,
              color: Colors.redAccent,
              child: Text('Retourner à la page d''accueil'),
              onPressed: () {
                Navigator.pop(context);
              },
*/