import 'package:delivery/model/produto_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomListItem extends StatefulWidget {
  final ProdutoProm produto;

  const CustomListItem({Key key, this.produto}) : super(key: key);

  @override
  _CustomListItemState createState() => _CustomListItemState();
}

class _CustomListItemState extends State<CustomListItem> {
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(widget.produto.nOMPRO),
      background: Container(
        alignment: AlignmentDirectional.centerEnd,
        color: Colors.red,
        child: Icon(
          Icons.delete,
          color: Colors.white,
        ),
      ),
      onDismissed: (direction) {
        setState(() {
          //produto.removeAt(index);
        });
      },
      direction: DismissDirection.endToStart,
      child: Card(
        elevation: 5,
        child: Container(
          height: 200.0,
          child: Column(
            children: <Widget>[
              Container(
                height: 100.0,
                width: 110.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(5),
                        topLeft: Radius.circular(5)),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(widget.produto.fOTOURL.replaceAll(
                            '{api_address}',
                            'http://177.86.175.200:3040/BorjaoService/entitiesopen/produtofotos')))),
              ),
              Container(
                height: 70,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 2, 5, 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        widget.produto.nOMPRO,
                        //  {TextStyle(fontSize: 14)},
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(6, 3, 0, 3),
                        child: Container(
                          width: 60,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.teal),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          child: Text(
                            widget.produto.iDCODIGO.toString(),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 2),
                        child: Container(
                          width: 260,
                          child: Text(
                            "Valor: " + widget.produto.vALOR.toStringAsFixed(2),
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 48, 48, 54)),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
