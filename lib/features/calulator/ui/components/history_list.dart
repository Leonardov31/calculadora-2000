import 'package:calculator/services/firebase_persistence_service.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class History extends StatelessWidget {
  History({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              right: 10.0,
              top: 10.0,
              bottom: 20.0,
            ),
            child: Text(
              "Histórico",
              style: TextStyle(fontSize: 18.0),
            ),
          ),
          HistoryList(),
        ],
      ),
    );
  }
}

class HistoryList extends StatelessWidget {
  HistoryList({
    Key? key,
  }) : super(key: key);

  final firebasePersistence = FirebasePersistenceService();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: FutureBuilder(
          future: firebasePersistence.getData(),
          builder: (context, AsyncSnapshot<DataSnapshot> snapshot) {
            late List historyList = [];
            if (snapshot.hasData) {
              historyList.clear();
              Map<dynamic, dynamic> values = snapshot.data!.value ?? 0;
              values.forEach((key, values) {
                historyList.add(values);
              });

              return ListView.builder(
                itemCount: historyList.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        onTap: () {},
                        title: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                '${historyList[index]['expression']}',
                                style: TextStyle(fontSize: 16),
                                textAlign: TextAlign.right,
                              ),
                              Text(
                                '${historyList[index]['result']}',
                                textAlign: TextAlign.right,
                                style: TextStyle(fontSize: 24),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        height: 1,
                      )
                    ],
                  );
                },
              );
            }
            return Text("Nenhum dado!");
          },
        ),
      ),
    );
  }
}
