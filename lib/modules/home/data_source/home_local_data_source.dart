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

    if (name == null &&
        hasStoppedSmoking == null &&
        date == null &&
        cigarrosDiarios == null &&
        cigarrosMaco == null &&
        valorMaco == null) {
      return null;
    }

    name ??= '';
    hasStoppedSmoking ??= '';
    date ??= '';
    cigarrosDiarios ??= '';
    cigarrosMaco ??= '';
    valorMaco ??= '';

    int daysWithoutSmoking = 0;
    if (hasStoppedSmoking == 'SIM') {
      try {
        List<String> dateParts = date.split('/');
        if (dateParts.length == 3) {
          int day = int.parse(dateParts[0]);
          int month = int.parse(dateParts[1]);
          int year = int.parse(dateParts[2]);
          DateTime stopDate = DateTime(year, month, day);

          daysWithoutSmoking = DateTime.now().difference(stopDate).inDays;
        }
      } catch (e) {
        print("Erro ao analisar a data: $e");
      }
    }

    int avoidedCigarettes = daysWithoutSmoking * int.parse(cigarrosDiarios);
    double moneySaved =
        avoidedCigarettes * double.parse(valorMaco.replaceAll('R\$', ''));

    return UserData(
      name: name,
      daysWithoutSmoking: daysWithoutSmoking,
      avoidedCigarettes: avoidedCigarettes,
      moneySaved: moneySaved,
    );
  }
}
