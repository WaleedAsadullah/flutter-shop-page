import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: [
            Container(
                padding: EdgeInsets.only(right: 20, top: 5),
                child: Icon(Icons.search, color: Colors.black87))
          ],
          backgroundColor: Colors.grey.shade100,
          title: Row(
            children: [
              Text(
                "mobi",
                style: TextStyle(
                    fontWeight: FontWeight.w400, color: Colors.black87),
              ),
              Text(
                "sport",
                style: TextStyle(
                    fontWeight: FontWeight.w100, color: Colors.black87),
              ),
            ],
          ),
          leading: Container(
            padding: EdgeInsets.only(left: 15.0),
            margin: EdgeInsets.only(top: 5.0),
            child: Image.network(
                'https://assets.stickpng.com/images/580b57fcd9996e24bc43c4f3.png'),
          ),
        ),
        body: Column(
          children: [
            ListTile(
              leading: Text(
                "Running",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                  fontSize: 20,
                ),
              ),
              trailing: Text("15 results"),
            ),
            design2(),
            design2(),
            design2(),
            design2()
          ],
        ),
      ),
    );
  }
}

Widget design() {
  return Container(
    decoration: BoxDecoration(),
    child: Container(
      child: ListTile(
        trailing: Icon(Icons.shopping_cart),
        title: Text("Shoes"),
        subtitle: Text("Rs 2000/-"),
        leading: Container(
          width: 100,
          child: Image.network(
              'https://assets.stickpng.com/images/580b57fcd9996e24bc43c4f3.png'),
        ),
      ),
    ),
    padding: EdgeInsets.all(10),
  );
}

Widget design2() {
  return Container(
    color: Colors.white,
    padding: EdgeInsets.all(10),
    margin: EdgeInsets.only(left: 12, right: 12, top: 5, bottom: 5),
    child: Row(
      children: [
        Container(
          width: 100,
          child: Image.network(
              'https://assets.stickpng.com/images/580b57fcd9996e24bc43c4f3.png'),
        ),
        Column(
          children: [
            Container(
              child: Text(
                "Men's \nFuelCell Echo",
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Colors.black87,
                  fontSize: 12,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(Icons.star, size: 18.0, color: Colors.yellow),
                Icon(Icons.star, size: 18.0, color: Colors.yellow),
                Icon(Icons.star, size: 18.0, color: Colors.yellow),
                Icon(Icons.star, size: 18.0, color: Colors.yellow),
                Icon(Icons.star_half, size: 18.0, color: Colors.yellow)
              ],
            ),
            Text(
              "Rs.1999",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black87,
                fontSize: 16,
              ),
            )
          ],
        ),
      ],
    ),
  );
}
