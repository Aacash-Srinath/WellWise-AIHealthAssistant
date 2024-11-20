import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = const FlutterSecureStorage();
    await _safeInitAsync(() async {
      _birthDate = await secureStorage.read(key: 'ff_birthDate') != null
          ? DateTime.fromMillisecondsSinceEpoch(
              (await secureStorage.getInt('ff_birthDate'))!)
          : _birthDate;
    });
    await _safeInitAsync(() async {
      _weightVal = await secureStorage.getDouble('ff_weightVal') ?? _weightVal;
    });
    await _safeInitAsync(() async {
      _heightVal = await secureStorage.getDouble('ff_heightVal') ?? _heightVal;
    });
    await _safeInitAsync(() async {
      _fullName = await secureStorage.getString('ff_fullName') ?? _fullName;
    });
    await _safeInitAsync(() async {
      _illnessList =
          await secureStorage.getStringList('ff_illnessList') ?? _illnessList;
    });
    await _safeInitAsync(() async {
      _BMIVal = await secureStorage.getDouble('ff_BMIVal') ?? _BMIVal;
    });
    await _safeInitAsync(() async {
      _phoneNumber =
          await secureStorage.getString('ff_phoneNumber') ?? _phoneNumber;
    });
    await _safeInitAsync(() async {
      _allergyList =
          await secureStorage.getStringList('ff_allergyList') ?? _allergyList;
    });
    await _safeInitAsync(() async {
      _prescriptionImage =
          await secureStorage.getString('ff_prescriptionImage') ??
              _prescriptionImage;
    });
    await _safeInitAsync(() async {
      _prescriptionImages =
          (await secureStorage.getStringList('ff_prescriptionImages')) ??
              _prescriptionImages;
    });
    await _safeInitAsync(() async {
      _alarmIds = (await secureStorage.getStringList('ff_alarmIds'))
              ?.map(int.parse)
              .toList() ??
          _alarmIds;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  DateTime? _birthDate = DateTime.fromMillisecondsSinceEpoch(1704127500000);
  DateTime? get birthDate => _birthDate;
  set birthDate(DateTime? value) {
    _birthDate = value;
    value != null
        ? secureStorage.setInt('ff_birthDate', value.millisecondsSinceEpoch)
        : secureStorage.remove('ff_birthDate');
  }

  void deleteBirthDate() {
    secureStorage.delete(key: 'ff_birthDate');
  }

  double _weightVal = 0.0;
  double get weightVal => _weightVal;
  set weightVal(double value) {
    _weightVal = value;
    secureStorage.setDouble('ff_weightVal', value);
  }

  void deleteWeightVal() {
    secureStorage.delete(key: 'ff_weightVal');
  }

  double _heightVal = 0.0;
  double get heightVal => _heightVal;
  set heightVal(double value) {
    _heightVal = value;
    secureStorage.setDouble('ff_heightVal', value);
  }

  void deleteHeightVal() {
    secureStorage.delete(key: 'ff_heightVal');
  }

  String _fullName = '';
  String get fullName => _fullName;
  set fullName(String value) {
    _fullName = value;
    secureStorage.setString('ff_fullName', value);
  }

  void deleteFullName() {
    secureStorage.delete(key: 'ff_fullName');
  }

  List<String> _illnessList = [];
  List<String> get illnessList => _illnessList;
  set illnessList(List<String> value) {
    _illnessList = value;
    secureStorage.setStringList('ff_illnessList', value);
  }

  void deleteIllnessList() {
    secureStorage.delete(key: 'ff_illnessList');
  }

  void addToIllnessList(String value) {
    illnessList.add(value);
    secureStorage.setStringList('ff_illnessList', _illnessList);
  }

  void removeFromIllnessList(String value) {
    illnessList.remove(value);
    secureStorage.setStringList('ff_illnessList', _illnessList);
  }

  void removeAtIndexFromIllnessList(int index) {
    illnessList.removeAt(index);
    secureStorage.setStringList('ff_illnessList', _illnessList);
  }

  void updateIllnessListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    illnessList[index] = updateFn(_illnessList[index]);
    secureStorage.setStringList('ff_illnessList', _illnessList);
  }

  void insertAtIndexInIllnessList(int index, String value) {
    illnessList.insert(index, value);
    secureStorage.setStringList('ff_illnessList', _illnessList);
  }

  double _BMIVal = 0.0;
  double get BMIVal => _BMIVal;
  set BMIVal(double value) {
    _BMIVal = value;
    secureStorage.setDouble('ff_BMIVal', value);
  }

  void deleteBMIVal() {
    secureStorage.delete(key: 'ff_BMIVal');
  }

  String _phoneNumber = '';
  String get phoneNumber => _phoneNumber;
  set phoneNumber(String value) {
    _phoneNumber = value;
    secureStorage.setString('ff_phoneNumber', value);
  }

  void deletePhoneNumber() {
    secureStorage.delete(key: 'ff_phoneNumber');
  }

  List<String> _allergyList = [];
  List<String> get allergyList => _allergyList;
  set allergyList(List<String> value) {
    _allergyList = value;
    secureStorage.setStringList('ff_allergyList', value);
  }

  void deleteAllergyList() {
    secureStorage.delete(key: 'ff_allergyList');
  }

  void addToAllergyList(String value) {
    allergyList.add(value);
    secureStorage.setStringList('ff_allergyList', _allergyList);
  }

  void removeFromAllergyList(String value) {
    allergyList.remove(value);
    secureStorage.setStringList('ff_allergyList', _allergyList);
  }

  void removeAtIndexFromAllergyList(int index) {
    allergyList.removeAt(index);
    secureStorage.setStringList('ff_allergyList', _allergyList);
  }

  void updateAllergyListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    allergyList[index] = updateFn(_allergyList[index]);
    secureStorage.setStringList('ff_allergyList', _allergyList);
  }

  void insertAtIndexInAllergyList(int index, String value) {
    allergyList.insert(index, value);
    secureStorage.setStringList('ff_allergyList', _allergyList);
  }

  String _prescriptionImage = '';
  String get prescriptionImage => _prescriptionImage;
  set prescriptionImage(String value) {
    _prescriptionImage = value;
    secureStorage.setString('ff_prescriptionImage', value);
  }

  void deletePrescriptionImage() {
    secureStorage.delete(key: 'ff_prescriptionImage');
  }

  List<String> _prescriptionImages = [];
  List<String> get prescriptionImages => _prescriptionImages;
  set prescriptionImages(List<String> value) {
    _prescriptionImages = value;
    secureStorage.setStringList('ff_prescriptionImages', value);
  }

  void deletePrescriptionImages() {
    secureStorage.delete(key: 'ff_prescriptionImages');
  }

  void addToPrescriptionImages(String value) {
    prescriptionImages.add(value);
    secureStorage.setStringList('ff_prescriptionImages', _prescriptionImages);
  }

  void removeFromPrescriptionImages(String value) {
    prescriptionImages.remove(value);
    secureStorage.setStringList('ff_prescriptionImages', _prescriptionImages);
  }

  void removeAtIndexFromPrescriptionImages(int index) {
    prescriptionImages.removeAt(index);
    secureStorage.setStringList('ff_prescriptionImages', _prescriptionImages);
  }

  void updatePrescriptionImagesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    prescriptionImages[index] = updateFn(_prescriptionImages[index]);
    secureStorage.setStringList('ff_prescriptionImages', _prescriptionImages);
  }

  void insertAtIndexInPrescriptionImages(int index, String value) {
    prescriptionImages.insert(index, value);
    secureStorage.setStringList('ff_prescriptionImages', _prescriptionImages);
  }

  List<int> _alarmIds = [];
  List<int> get alarmIds => _alarmIds;
  set alarmIds(List<int> value) {
    _alarmIds = value;
    secureStorage.setStringList(
        'ff_alarmIds', value.map((x) => x.toString()).toList());
  }

  void deleteAlarmIds() {
    secureStorage.delete(key: 'ff_alarmIds');
  }

  void addToAlarmIds(int value) {
    alarmIds.add(value);
    secureStorage.setStringList(
        'ff_alarmIds', _alarmIds.map((x) => x.toString()).toList());
  }

  void removeFromAlarmIds(int value) {
    alarmIds.remove(value);
    secureStorage.setStringList(
        'ff_alarmIds', _alarmIds.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromAlarmIds(int index) {
    alarmIds.removeAt(index);
    secureStorage.setStringList(
        'ff_alarmIds', _alarmIds.map((x) => x.toString()).toList());
  }

  void updateAlarmIdsAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    alarmIds[index] = updateFn(_alarmIds[index]);
    secureStorage.setStringList(
        'ff_alarmIds', _alarmIds.map((x) => x.toString()).toList());
  }

  void insertAtIndexInAlarmIds(int index, int value) {
    alarmIds.insert(index, value);
    secureStorage.setStringList(
        'ff_alarmIds', _alarmIds.map((x) => x.toString()).toList());
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return const CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: const ListToCsvConverter().convert([value]));
}
