import 'package:cigarrozeroapp/shared/local_data_source.dart';

abstract class LocalDataSource {
  void saveData(Map<String, String> answers);
}

class LocalDataSourceImpl implements LocalDataSource {
  final LocalStorage storage;

  LocalDataSourceImpl(this.storage);

  @override
  void saveData(Map<String, String> answers) {
    if (answers['name'] != null &&
        answers['hasStoppedSmoking'] != null &&
        answers['date'] != null &&
        answers['cigarrosDiários'] != null &&
        answers['cigarrosMaço'] != null &&
        answers['valorMaço'] != null) {
      storage.write('name', answers['name']!);

      storage.write(
        'hasStoppedSmoking',
        answers['hasStoppedSmoking']!,
      );

      storage.write('date', answers['date']!);
      storage.write(
        'cigarrosDiários',
        answers['cigarrosDiários']!,
      );

      storage.write('cigarrosMaço', answers['cigarrosMaço']!);
      storage.write('valorMaço', answers['valorMaço']!);
    }
  }
}
