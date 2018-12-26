import 'package:flutter/material.dart';
import 'package:e_commerce_app/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": 'products/blazer1.jpeg',
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Red dress",
      "picture": 'products/dress1.jpeg',
      "old_price": 120,
      "price": 8500,
    },
    {
      "name": "Dress",
      "picture": 'products/dress2.jpeg',
      "old_price": 120,
      "price": 1185,
    },
    {
      "name": "Hill",
      "picture": 'products/hills1.jpeg',
      "old_price": 120,
      "price": 1285,
    },
    {
      "name": "Hill 2",
      "picture": 'products/hills2.jpeg',
      "old_price": 120,
      "price": 1285,
    },
    {
      "name": "Pant",
      "picture": 'products/pants1.jpg',
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "pant2",
      "picture": 'products/pants2.jpeg',
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Shoe",
      "picture": 'products/shoe1.jpg',
      "old_price": 120,
      "price": 85,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_pictures: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_pictures;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_old_price,
    this.prod_pictures,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prod_name,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                //here we are passing values from product to product detail page
                builder: (context) => new ProductDetails(product_detail_name: prod_name,
                product_detail_new_price: prod_price,product_detail_old_price: prod_old_price,
                product_detail_picture: prod_pictures,))),
            child: GridTile(
                footer: Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: Text(
                      prod_name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    title: Text(
                      "\$$prod_price",
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.w800),
                    ),
                    subtitle: Text(
                      "\$$prod_old_price",
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w800,
                          decoration: TextDecoration.lineThrough),
                    ),
                  ),
                ),
                child: Image.asset(
                  prod_pictures,
                  fit: BoxFit.cover,
                )),
          ),
        ),
      ),
    );
  }
}
