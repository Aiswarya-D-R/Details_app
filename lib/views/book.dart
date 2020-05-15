import 'package:flutter/material.dart';

class Book extends StatefulWidget {
  @override
  _BookState createState() => _BookState();
}

class _BookState extends State<Book> {
  TextEditingController titlecontroller = TextEditingController();
  TextEditingController authorcontroller = TextEditingController();
  TextEditingController genrecontroller = TextEditingController();
  var title = [];
  var author = [];
  var genre = [];

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
            Text(
              "BOOK DETAILS",
              style: TextStyle(fontSize: 30.0),
            ),
            SizedBox(
              height: 30.0,
            ),
            TextField(
              controller: titlecontroller,
              decoration: InputDecoration(
                  hintText: "Enter book title",
                  labelText: "Book Title",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  )),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              controller: authorcontroller,
              decoration: InputDecoration(
                  hintText: "Enter author name",
                  labelText: "Author",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  )),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              controller: genrecontroller,
              decoration: InputDecoration(
                  hintText: "Enter book genre",
                  labelText: "Genre",
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
                  var getTitle = titlecontroller.text;
                  var getAuthor = authorcontroller.text;
                  var getGenre = genrecontroller.text;
                  titlecontroller.clear();
                  authorcontroller.clear();
                  genrecontroller.clear();
                  title.add(getTitle);
                  author.add(getAuthor);
                  genre.add(getGenre);
                });
              },
              child: Text(
                "ADD",
                style: TextStyle(fontSize: 25.0, color: Colors.white),
              ),
              color: Colors.deepPurple,
            ),
            SizedBox(
              height: 20.0,
            ),
            SingleChildScrollView(
              child: ListView.builder(
                  itemCount: title.length == null ? 0 : title.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 5.0,
                      child: ListTile(
                        leading: Icon(
                          Icons.book,
                          size: 35.0,
                          color: Colors.deepPurple,
                        ),
                        title: Text(
                          "BOOK: " + title[index],
                          style: TextStyle(fontSize: 20.0),
                        ),
                        subtitle: Text("AUTHOR: " +
                            author[index] +
                            "\nGENRE: " +
                            genre[index]),
                        trailing: GestureDetector(
                            onTap: () {
                              setState(() {
                                title.removeAt(index);
                                author.removeAt(index);
                                genre.removeAt(index);
                              });
                            },
                            child: Icon(
                              Icons.delete,
                              size: 25.0,
                              color: Colors.deepPurple,
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
