import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'CrowdFounder',
      home: new Scaffold(
        appBar: buildAppBar(),
        body: mainContent(),
      ),
    );
  }

  AppBar buildAppBar() {
    return new AppBar(
      backgroundColor: Colors.orange,
      title: new Text('CrowdFounder'),
      leading: new IconButton(
        icon: new Icon(Icons.menu),
        onPressed: null,
      ),
    );
  }

  Widget mainContent() {
    return new Stack(
      children: <Widget>[
        new ListView(
          children: [
            new Image.asset(
              'images/img_top.png',
              fit: BoxFit.cover,
              height: 200.0,
            ),
            articleCategory(),
            titleArticle(),
            textArticle(),
            readMore(),
            sliderObjective(),
            rowWithObjectives(),
            backThisProject(),
          ],
        ),
        overlapImageWithText(),
      ],
    );
  }

  Widget articleCategory() {
    return new Container(
        padding: const EdgeInsets.all(16.0),
        child: new Row(
          children: <Widget>[
            new Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
              child: new Icon(
                Icons.videogame_asset,
                color: Colors.grey,
              ),
            ),
            new Text(
              "Game",
              style: new TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        )
    );
  }


  Widget titleArticle() {
    return new Container(
        padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 16.0),
        child: new Text(
          "Sustentabilty S/A: A mobile game about managing green business",
          style: new TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 24.0,
          ),
        ));
  }

  Widget textArticle() {
    return new Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
        child: new Text(
          "Lorem fistrum al ataquerl pupita llevame al sircoo se calle ustée va usté",
          style: new TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.normal,
            fontSize: 18.0,
          ),
        ));
  }

  Widget readMore() {
    return new Container(
        padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 16.0),
        child: new Text(
          "READ MORE",
          style: new TextStyle(
            color: Colors.orange,
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ));
  }

  Widget sliderObjective() {
    return new Container(
      child: new Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
        child: new Row(
          children: <Widget>[
            new Flexible(
              child: new Container(
                  decoration: new BoxDecoration(
                border: new Border.all(
                  color: Colors.orange,
                  width: 6.0,
                ),
              )),
              flex: 6,
            ),
            new Flexible(
              child: new Container(
                  decoration: new BoxDecoration(
                border: new Border.all(
                  color: Colors.black12,
                  width: 6.0,
                ),
              )),
              flex: 4,
            ),
          ],
        ),
      ),
    );
  }

  Widget rowWithObjectives() {
    return new Container(
        child: new Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
            child: new Row(
              children: <Widget>[
                textFirstBoldSecondSmall("\$75.000", "of \$100.000 goal"),
                textFirstBoldSecondSmall("300", "bakers"),
                textFirstBoldSecondSmall("30", "days to go"),
              ],
            )
        )
    );
  }

  Widget textFirstBoldSecondSmall(String first, String second) {
    return new Expanded(
        child: new Column(
      children: <Widget>[
        new Text(
          first,
          style: new TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 22.0,
          ),
        ),
        new Text(
          second,
          style: new TextStyle(
            color: Colors.black38,
            fontWeight: FontWeight.bold,
            fontSize: 14.0,
          ),
        ),
      ],
    ));
  }

  Widget backThisProject() {
    return new Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
        child: new Container(
            decoration: new BoxDecoration(
                color: Colors.orange,
                shape: BoxShape.rectangle,
                borderRadius: new BorderRadius.circular(25.0)),
            child: new Center(
                child: new Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: new MaterialButton(
                onPressed: null,
                child: new Text(
                  "BACK THIS PROJECT",
                  style: new TextStyle(color: Colors.white, fontSize: 18.0),
                ),
              ),
            ),),
        ),
    );
  }

  Widget overlapImageWithText() {
    return new Container(
        child: new Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 120.0, 35.0, 0.0),
            child: new Align(
                alignment: Alignment.bottomRight,
                child: new Column(
                  children: <Widget>[
                    new Container(
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          border: new Border.all(
                              color: Colors.white, width: 8.0),
                          image: new DecorationImage(
                              image:
                              new AssetImage('images/img_face.jpg'))),
                      width: 110.0,
                      height: 110.0,
                    ),
                    new Text(
                      "Albert M",
                      style: new TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.0),
                    )
                  ],
                )
            )
        )
    );
  }
  
}
