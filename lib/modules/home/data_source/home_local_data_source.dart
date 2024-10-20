import '../../../shared/local_data_source.dart';
import '../model/user_data.dart';

abstract class HomeLocalDataSource {
  Future<UserData?> getUserData();
}

class HomeLocalDataSourceImpl implements HomeLocalDataSource {
  final LocalStorage storage;

  HomeLocalDataSourceImpl(this.storage);

  @override
  Future<UserData?> getUserData() async {
    String? name = await storage.read('name');
    String? hasStoppedSmoking = await storage.read('hasStoppedSmoking');
    String? date = await storage.read('date');
    String? cigarrosDiarios = await storage.read('cigarrosDiários');
    String? cigarrosMaco = await storage.read('cigarrosMaço');
    String? valorMaco = await storage.read('valorMaço');

    if (_areAllValuesNull([
      name,
      hasStoppedSmoking,
      date,
      cigarrosDiarios,
      cigarrosMaco,
      valorMaco
    ])) {
      return null;
    }

    name ??= '';
    hasStoppedSmoking ??= '';
    date ??= '';
    cigarrosDiarios ??= '';
    cigarrosMaco ??= '';
    valorMaco ??= '';


    int daysWithoutSmoking = _calculateDaysWithoutSmoking(
        hasStoppedSmoking, date);
    int avoidedCigarettes = _calculateAvoidedCigarettes(
        daysWithoutSmoking, cigarrosDiarios);
    double moneySaved = _calculateMoneySaved(avoidedCigarettes, valorMaco);

    return UserData(
      name: name,
      daysWithoutSmoking: daysWithoutSmoking,
      avoidedCigarettes: avoidedCigarettes,
      moneySaved: moneySaved,
    );
  }


  bool _areAllValuesNull(List<String?> values) {
    return values.every((value) => value == null);
  }

  int _calculateDaysWithoutSmoking(String hasStoppedSmoking, String date) {
    if (hasStoppedSmoking == 'SIM') {
      try {
        DateTime? stopDate = _parseDate(date);
        if (stopDate != null) {
          return DateTime
              .now()
              .difference(stopDate)
              .inDays;
        }
      } catch (e) {
        print("Erro ao analisar a data: $e");
      }
    }
    return 0;
  }

  DateTime? _parseDate(String date) {
    try {
      List<String> dateParts = date.split('/');
      if (dateParts.length == 3) {
        int day = int.parse(dateParts[0]);
        int month = int.parse(dateParts[1]);
        int year = int.parse(dateParts[2]);
        return DateTime(year, month, day);
      }
    } catch (e) {
      print("Erro ao fazer o parsing da data: $e");
    }
    return null;
  }

  int _calculateAvoidedCigarettes(int daysWithoutSmoking,
      String cigarrosDiarios) {
    int cigarrosDiariosInt = int.tryParse(cigarrosDiarios) ?? 0;
    return daysWithoutSmoking * cigarrosDiariosInt;
  }

  double _calculateMoneySaved(int avoidedCigarettes, String valorMaco) {
    double valorMacoDouble = double.tryParse(
        valorMaco.replaceAll('R\$', '').replaceAll(',', '.')) ?? 0.0;
    return avoidedCigarettes * valorMacoDouble;
  }
}