import 'package:flutter/material.dart';

class DataItem {
  final String personName;
  final String bookName;
  final String authorName;
  final String date;
  final String time;
  final String submitDate;

  DataItem({
    required this.personName,
    required this.bookName,
    required this.authorName,
    required this.date,
    required this.time,
    required this.submitDate,
  });
}

class LibraryRegistrationListView extends StatefulWidget {
  @override
  _RegistrationListDemoState createState() => _RegistrationListDemoState();
}

class _RegistrationListDemoState extends State<LibraryRegistrationListView> {
  List<DataItem> dataList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration List'),
      ),
      body: ListView(
        children: <Widget>[
          ElevatedButton(
            onPressed: () {
              // Add a new data item
              setState(() {
                dataList.add(DataItem(
                  personName: 'John Doe',
                  bookName: 'Flutter for Beginners',
                  authorName: 'Jane Smith',
                  date: '2024-02-06',
                  time: '10:00 AM',
                  submitDate: DateTime.now().toString(),
                ));
              });
            },
            child: Text('Add Data Item'),
          ),
          SizedBox(height: 20),
          // Display data items in a table
          DataTable(
            columns: [
              DataColumn(label: Text('Person Name')),
              DataColumn(label: Text('Book Name')),
              DataColumn(label: Text('Author Name')),
              DataColumn(label: Text('Date')),
              DataColumn(label: Text('Time')),
              DataColumn(label: Text('Submit Date')),
              DataColumn(label: Text('Actions')),
            ],
            rows: dataList.map((data) {
              return DataRow(cells: [
                DataCell(Text(data.personName)),
                DataCell(Text(data.bookName)),
                DataCell(Text(data.authorName)),
                DataCell(Text(data.date)),
                DataCell(Text(data.time)),
                DataCell(Text(data.submitDate)),
                DataCell(
                  IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      // Remove data item
                      setState(() {
                        dataList.remove(data);
                      });
                    },
                  ),
                ),
              ]);
            }).toList(),
          ),
        ],
      ),
    );
  }
}
