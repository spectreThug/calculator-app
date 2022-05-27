import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  final String date;
  final String cost;
  final String salvage;
  final String life;

  // ignore: use_key_in_widget_constructors
  const ResultScreen(this.date, this.cost, this.salvage, this.life);

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  showResult(lifeValue, dateValue, costValue, salvageValue) {
    List list = [];
    var depx;
    var x = 0.0;
    for (var i = 0; i < int.parse(lifeValue); i++) {
      var t = int.parse(costValue) - int.parse(salvageValue);
      depx = (t / int.parse(lifeValue)).round();

      x += depx;

      list.add({
        'year': int.parse(dateValue) + i + 1,
        'depc': int.parse(costValue) - int.parse(salvageValue),
        'depx': depx,
        "x": x.toInt(),
        'book': int.parse(costValue) - x.toInt()
      });
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    var list =
        showResult(widget.life, widget.date, widget.cost, widget.salvage);
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xff0a0e20),
        appBar: AppBar(
          backgroundColor: const Color(0xff0a0e20),
          title: const Text(
            'Economy Calculator',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
          centerTitle: true,
          elevation: 0,
        ),
        body: ListView(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            const Center(
              child: Text(
                'Deprecation Result',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                columns: const [
                  DataColumn(
                    label: Text(
                      'YEAR',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'DEPRECIABLE COST',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'DEPRECIATION EXPENCE',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'DEPRECIATION ACCUMULATED',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'BOOK VALUE',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
                rows: [
                  ...list
                      .map(
                        (element) => DataRow(
                          cells: [
                            DataCell(
                              Text(
                                element['year'].toString(),
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                element['depc'].toString(),
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                element['depx'].toString(),
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                element['x'].toString(),
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                element['book'].toString(),
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                      .toList()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
