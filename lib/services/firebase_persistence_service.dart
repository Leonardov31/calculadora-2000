import 'package:firebase_database/firebase_database.dart';

class FirebasePersistenceService {
  final database = FirebaseDatabase.instance.reference().child('historico');

  void addData(String expression, String result) async {
    try {
      await database.push().set({
        'expression': expression,
        'result': result,
      });
    } catch (e) {
      return;
    }
  }

  readData() async {
    var data = await database.once().then((snapshot) => snapshot.value);
    return data;
  }

  getData() {
    return database.once();
  }
}
