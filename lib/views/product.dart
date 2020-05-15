import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Prod extends StatefulWidget {
  @override
  _ProdState createState() => _ProdState();
}

class _ProdState extends State<Prod> {
  TextEditingController namcontrol = TextEditingController();
  TextEditingController batchcontrol = TextEditingController();
  TextEditingController pricecontrol = TextEditingController();
  var nam = [];
  var batch = [];
  var price = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 60.0,
            ),
            Center(
              child: Text(
                "PRODUCT DETAILS",
                style: TextStyle(fontSize: 30.0),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              controller: namcontrol,
              decoration: InputDecoration(
                  hintText: "Enter product name",
                  labelText: "Product name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  )),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              controller: batchcontrol,
              decoration: InputDecoration(
                  hintText: "Enter batch",
                  labelText: "Batch",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  )),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              controller: pricecontrol,
              decoration: InputDecoration(
                  hintText: "Enter price",
                  labelText: "Price",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  )),
            ),
            SizedBox(
              height: 10.0,
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  var getNam = namcontrol.text;
                  var getBatch = batchcontrol.text;
                  var getPrice = pricecontrol.text;
                  namcontrol.clear();
                  batchcontrol.clear();
                  pricecontrol.clear();
                  nam.add(getNam);
                  batch.add(getBatch);
                  price.add(getPrice);
                });
              },
              child: Text("ADD",style: TextStyle(fontSize: 25.0,color: Colors.white),),
              color: Colors.indigo,
            ),
            SizedBox(
              height: 30.0,
            ),
            SingleChildScrollView(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: nam.length == null ? 0 : nam.length,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 5.0,
                      child: ListTile(
                        leading: Icon(
                          Icons.palette,
                          size: 35.0,
                          color: Colors.indigo,
                        ),
                        title: Text(
                          "PRODUCT: " + nam[index],
                          style: TextStyle(fontSize: 20.0),
                        ),
                        subtitle: Text("Batch: " +
                            batch[index] +
                            "\nPrice" +
                            price[index]),
                        trailing: GestureDetector(
                            onTap: () {
                              setState(() {
                                nam.removeAt(index);
                                batch.removeAt(index);
                                price.removeAt(index);
                              });
                            },
                            child: Icon(
                              Icons.delete,
                              size: 35.0,
                              color: Colors.indigo,
                            )),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
