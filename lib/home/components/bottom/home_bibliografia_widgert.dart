import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BibliografiayRefrencias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final auxbook = Provider.of<SesionProvider>(context).getauxbook();
    return Container(
      color: Theme.of(context).backgroundColor,
      child: Column(
        children: <Widget>[
          Container(
            color: Theme.of(context).primaryColorDark,
            child: Card(
                child: ListTile(
              title: Text('Datos del autor',
                  style: TextStyle(fontWeight: FontWeight.w500)),
              subtitle: Text('auxbook.title'),
              leading: Icon(
                Icons.more,
                color: Theme.of(context).accentColor,
              ),
            )),
          ),
          Container(
            color: Theme.of(context).primaryColorDark,
            child: Card(
              child: ListTile(
                title: Text('leer mas',
                    style: TextStyle(fontWeight: FontWeight.w500)),
                leading: Icon(
                  Icons.add,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ),
          ),
          Container(
            color: Theme.of(context).primaryColorDark,
            child: Card(
              child: ListTile(
                title: Text('elimina anuncios y vuelvete premium'),
                leading: Icon(
                  Icons.star,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
