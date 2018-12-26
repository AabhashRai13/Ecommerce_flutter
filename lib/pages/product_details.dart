import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  ProductDetails(
      {this.product_detail_name,
      this.product_detail_new_price,
      this.product_detail_old_price,
      this.product_detail_picture});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          elevation: 0.1,
          backgroundColor: Colors.red,
          title: Text('FashApp'),
          actions: <Widget>[
            new IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: () {}),
            new IconButton(
                icon: Icon(
                  Icons.shopping_basket,
                  color: Colors.white,
                ),
                onPressed: () {})
          ],
        ),
        body: new ListView(children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(
                  widget.product_detail_picture,
                  fit: BoxFit.cover,
                ),
              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    widget.product_detail_name,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                          child: new Text("${widget.product_detail_old_price}",
                              style: TextStyle(
                                  decoration: TextDecoration.lineThrough))),
                      Expanded(
                        child: new Text("${widget.product_detail_new_price}",
                            style: TextStyle(color: Colors.green)),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          // ====== the first buttons boi====
          Row(
            children: <Widget>[
              // size button boi
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("fuck u not ready yet"),
                            content: new Text("choose the size"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("close"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.3,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Size"),
                      ),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down_circle),
                      ),
                    ],
                  ),
                ),
              ),
              // color button boi
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("fuck u not ready yet"),
                            content: new Text("choose the color"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("close"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.3,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("color"),
                      ),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down_circle),
                      ),
                    ],
                  ),
                ),
              ),
              // Quantity button boi
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("fuck u not ready yet"),
                            content: new Text("choose quantity"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("close"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.3,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Qty"),
                      ),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down_circle),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              // buy button boi
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("spend alot make me rich"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("Buy more boi"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.red,
                  textColor: Colors.grey,
                  elevation: 0.3,
                  child: new Text("Buy now"),
                ),
              ),
              new IconButton(
                  icon: Icon(Icons.add_shopping_cart),
                  color: Colors.red,
                  onPressed: () {}),
              new IconButton(
                  icon: Icon(Icons.favorite_border),
                  color: Colors.red,
                  onPressed: () {})
            ],
          ),
          Divider(),
          new ListTile(
            title: new Text("Product details"),
            subtitle: new Text("hey teacher leave us kids alone"),
          ),
          Divider(),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
              child: new Text("Product name", style: TextStyle(color: Colors.grey),)),
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text(widget.product_detail_name),
              )
            ],
          ),
        // Remeber to create product brand
        new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
                  child: new Text("Product brand", style: TextStyle(color: Colors.grey),)),
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text("Brand Z cause Dragon Ball Z"),
              )],
          ),
         /* new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
                  child: new Text("Product condition", style: TextStyle(color: Colors.grey),))
            ],
          ), */
        ])

    );
  }
}
