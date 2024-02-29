import 'package:flutter/material.dart';

class LibraryBookRegistrationPage extends StatefulWidget {
  @override
  _LibraryBookRegistrationPageState createState() =>
      _LibraryBookRegistrationPageState();
}

class _LibraryBookRegistrationPageState
    extends State<LibraryBookRegistrationPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController LibraryPersonNameController = TextEditingController();
  TextEditingController LibraryBookNameController = TextEditingController();
  TextEditingController LibraryAuthorNameController = TextEditingController();
  TextEditingController LibraryBookNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Registration Form'),
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Book Registration',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                  ),
                ),
                SizedBox(height: 16.0),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: LibraryPersonNameController,
                        decoration: InputDecoration(
                          labelText: 'Name of Person',
                          icon: Icon(Icons.person),
                        ),
                        validator: (value) => value == null || value.isEmpty
                            ? 'field is required'
                            : null,
                      ),
                      SizedBox(height: 16.0),
                      TextFormField(
                        controller: LibraryBookNameController,
                        decoration: InputDecoration(
                          labelText: 'Name of Book',
                          icon: Icon(Icons.book),
                        ),
                        validator: (value) => value == null || value.isEmpty
                            ? 'field is required'
                            : null,
                      ),
                      SizedBox(height: 16.0),
                      TextFormField(
                        controller: LibraryAuthorNameController,
                        decoration: InputDecoration(
                          labelText: 'Name of Author',
                          icon: Icon(Icons.person_outline),
                        ),
                        validator: (value) => value == null || value.isEmpty
                            ? 'field is required'
                            : null,
                      ),
                      SizedBox(height: 16.0),
                      TextFormField(
                        controller: LibraryBookNumberController,
                        decoration: InputDecoration(
                          labelText: 'Book Number',
                          icon: Icon(Icons.confirmation_number),
                        ),
                        validator: (value) => value == null || value.isEmpty
                            ? 'field is required'
                            : null,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      LibraryPersonNameController.clear();
                      LibraryBookNameController.clear();
                      LibraryAuthorNameController.clear();
                      LibraryBookNumberController.clear();
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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

                      String personName = LibraryPersonNameController.text;
                      String bookName = LibraryBookNameController.text;
                      String authorName = LibraryAuthorNameController.text;
                      String bookNumber = LibraryBookNumberController.text;

                      print(
                          'Person Name: $personName\nBook Name: $bookName\nAuthor Name: $authorName\nBook Number: $bookNumber');
                    }
                  },
                  child: Text(
                    'Register Book',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
