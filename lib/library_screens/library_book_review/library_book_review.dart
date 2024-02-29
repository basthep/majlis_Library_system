import 'package:flutter/material.dart';

class LibraryBookReviewPage extends StatefulWidget {
  @override
  _LibraryBookReviewPageState createState() => _LibraryBookReviewPageState();
}

class _LibraryBookReviewPageState extends State<LibraryBookReviewPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController LibraryTitleController = TextEditingController();
  TextEditingController LibraryAuthorController = TextEditingController();
  TextEditingController LibraryReviewController = TextEditingController();
  TextEditingController LibraryWrittenByController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Review'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          elevation: 5.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                    controller: LibraryWrittenByController,
                    decoration: InputDecoration(labelText: 'Written By'),
                    validator: (value) => value == null || value.isEmpty
                        ? 'field is required'
                        : null,
                  ),
                  SizedBox(height: 16.0),
                  TextFormField(
                    controller: LibraryTitleController,
                    decoration: InputDecoration(labelText: 'Book Title'),
                    validator: (value) => value == null || value.isEmpty
                        ? 'field is required'
                        : null,
                  ),
                  SizedBox(height: 16.0),
                  TextFormField(
                    controller: LibraryAuthorController,
                    decoration: InputDecoration(labelText: 'Author'),
                    validator: (value) => value == null || value.isEmpty
                        ? 'field is required'
                        : null,
                  ),
                  SizedBox(height: 16.0),
                  TextFormField(
                    controller: LibraryReviewController,
                    maxLines: 5,
                    decoration: InputDecoration(labelText: 'Review'),
                    validator: (value) => value == null || value.isEmpty
                        ? 'field is required'
                        : null,
                  ),
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        LibraryWrittenByController.clear();
                        LibraryTitleController.clear();
                        LibraryAuthorController.clear();
                        LibraryReviewController.clear();

                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Container(
                            padding: EdgeInsets.all(16),
                            height: 90,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 34, 128, 47),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 48,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Well Done",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Text(
                                        "Record Submitted!",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          behavior: SnackBarBehavior.floating,
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                        ));
                        String writtenby = LibraryWrittenByController.text;
                        String title = LibraryTitleController.text;
                        String author = LibraryAuthorController.text;
                        String review = LibraryReviewController.text;

                        print(
                            'Written By: $writtenby\nTitle: $title\nAuthor: $author\nReview: $review');
                      }
                    },
                    child: Text('Submit Review'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
