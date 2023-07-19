// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TableScreen extends StatefulWidget {
  const TableScreen({super.key});

  @override
  State<TableScreen> createState() => _TableScreenState();
}

class _TableScreenState extends State<TableScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Table Widget"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Student Information:",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 12),
              Table(
                textBaseline: TextBaseline.ideographic,
                border: TableBorder.all(
                  borderRadius: BorderRadius.circular(10),
                  width: 1.2,
                ),
                columnWidths: const {
                  0: FractionColumnWidth(.10),
                  1: FractionColumnWidth(0.25),
                  2: FractionColumnWidth(0.25),
                },
                children: [
                  buildRow(["No.", "Name", "Class", "Address"], isHeader: true),
                  buildRow(["01", "Nahid", "Five", "Pabna"]),
                  buildRow(["02", "Yakub Rabby", "Five", "Comilla"]),
                  buildRow(["03", "Riju", "Five", "Gopalganj"]),
                  buildRow(["04", "Porosh", "Five", "Naogaon"]),
                  buildRow(["05", "Peash", "Five", "Rajshahi"]),
                ],
              ),
              SizedBox(height: 25),
              Text(
                "Result Sheet:",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 12),
              Table(
                textBaseline: TextBaseline.ideographic,
                border: TableBorder.all(
                  style: BorderStyle.none,
                  borderRadius: BorderRadius.circular(10),
                  width: 1.2,
                ),
                columnWidths: const {
                  0: FractionColumnWidth(.40),
                  1: FractionColumnWidth(0.25),
                  2: FractionColumnWidth(0.25),
                },
                children: [
                  buildRow(["Name", "Roll", "GPA"], isHeader: true),
                  buildRow(["Nahid", "01", "5.00"]),
                  buildRow(["Yakub Rabby", "02", "4.90"]),
                  buildRow(["Riju", "03", "5.00"]),
                  buildRow(["Porosh", "04", "4.94"]),
                  buildRow(["Peash", "05", "4.90"]),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  TableRow buildRow(List<String> cells, {isHeader = false}) {
    TextStyle textStyle = TextStyle(
      fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
    );
    return TableRow(
      children: cells
          .map(
            (e) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  e,
                  style: textStyle,
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
