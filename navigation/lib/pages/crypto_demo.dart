import 'package:flutter/material.dart';

class CryptoListWidget extends StatelessWidget {
  
  // This is a list of material colors. Feel free to add more colors, it won't break the code
  final List<MaterialColor> _colors = [Colors.blue, Colors.indigo, Colors.red];
  // The underscore before a variable name marks it as a private variable
  final List _currencies;

  // This is a constructor in Dart. We are assigning the value passed to the constructor
  // to the _currencies variable
  CryptoListWidget(this._currencies);

  Widget _buildBody(){
    BuildContext context;
        return new Container(
          margin: const EdgeInsets.fromLTRB(8.0, 56.0, 8.0, 0.0),
          child: new Column(
            children: <Widget>[
              _getAppTitleWidget(),
              IconButtonWidget(context),
          _getListViewWidget(),
          
        ],
      ),
    );
  }
  
  Widget _getAppTitleWidget(){
    return new Text(
      'Cryptocurrencies',
      style: new TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 24.0 
      )
    );
  }

  

  Widget _getListViewWidget(){
    return new Flexible(
      child: new ListView.builder(
        itemCount: _currencies.length,
        itemBuilder: (context, index){
          final Map currency = _currencies[index];

          final MaterialColor color = _colors[index % _colors.length];

          return _getListItemWidget(currency, color);
        }
      )
    );
  }

  CircleAvatar _getLeadingWidget(String currencyName, MaterialColor color){
    return new CircleAvatar(
      backgroundColor: color,
      child: new Text(currencyName[0]),
    );
  }

  Text _getTitleWidget(String currencyName){
    return new Text(
      currencyName, style: new TextStyle(fontWeight: FontWeight.bold),
    );
  }

  Text _getSubtitleWidget(String priceUsd, String percentChange1h){
    return new Text('\$$priceUsd\n1 hour: $percentChange1h%');
  }

  ListTile _getListTile(Map currency, MaterialColor color){
    return new ListTile(
      leading: _getLeadingWidget(currency['name'], color),
      title: _getTitleWidget(currency['name']),
      subtitle: _getSubtitleWidget(
        currency['price_usd'], currency['percent_change_1h']),
      isThreeLine: true,
    );
  }

  Container _getListItemWidget(Map currency, MaterialColor color){
    return new Container(
      margin: const EdgeInsets.only(top: 5.0),
      child: new Card(
        child: _getListTile(currency, color),
      ),
    );
  }
  @override
  Widget IconButtonWidget(BuildContext context){
    return new IconButton(
      icon: new Icon(Icons.home, color: Colors.redAccent),
      iconSize: 90.0,
      onPressed:() {
        Navigator.of(context).pushNamed("/SecondPage");
      }
    );
  }
  @override
  Widget build(BuildContext context) {
    // Build describes the widget in terms of other, lower-level widgets.
    return new Scaffold(
      body: _buildBody(),
      backgroundColor: Colors.yellow[800],
    );
  }

}