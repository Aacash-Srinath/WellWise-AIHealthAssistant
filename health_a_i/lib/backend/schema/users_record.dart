import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "age" field.
  int? _age;
  int get age => _age ?? 0;
  bool hasAge() => _age != null;

  // "birthDate" field.
  DateTime? _birthDate;
  DateTime? get birthDate => _birthDate;
  bool hasBirthDate() => _birthDate != null;

  // "heightVal" field.
  double? _heightVal;
  double get heightVal => _heightVal ?? 0.0;
  bool hasHeightVal() => _heightVal != null;

  // "weightVal" field.
  double? _weightVal;
  double get weightVal => _weightVal ?? 0.0;
  bool hasWeightVal() => _weightVal != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "prescriptionData" field.
  String? _prescriptionData;
  String get prescriptionData => _prescriptionData ?? '';
  bool hasPrescriptionData() => _prescriptionData != null;

  // "mealPlan" field.
  String? _mealPlan;
  String get mealPlan => _mealPlan ?? '';
  bool hasMealPlan() => _mealPlan != null;

  // "workoutPlan" field.
  String? _workoutPlan;
  String get workoutPlan => _workoutPlan ?? '';
  bool hasWorkoutPlan() => _workoutPlan != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _age = castToType<int>(snapshotData['age']);
    _birthDate = snapshotData['birthDate'] as DateTime?;
    _heightVal = castToType<double>(snapshotData['heightVal']);
    _weightVal = castToType<double>(snapshotData['weightVal']);
    _gender = snapshotData['gender'] as String?;
    _prescriptionData = snapshotData['prescriptionData'] as String?;
    _mealPlan = snapshotData['mealPlan'] as String?;
    _workoutPlan = snapshotData['workoutPlan'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  int? age,
  DateTime? birthDate,
  double? heightVal,
  double? weightVal,
  String? gender,
  String? prescriptionData,
  String? mealPlan,
  String? workoutPlan,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'age': age,
      'birthDate': birthDate,
      'heightVal': heightVal,
      'weightVal': weightVal,
      'gender': gender,
      'prescriptionData': prescriptionData,
      'mealPlan': mealPlan,
      'workoutPlan': workoutPlan,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.age == e2?.age &&
        e1?.birthDate == e2?.birthDate &&
        e1?.heightVal == e2?.heightVal &&
        e1?.weightVal == e2?.weightVal &&
        e1?.gender == e2?.gender &&
        e1?.prescriptionData == e2?.prescriptionData &&
        e1?.mealPlan == e2?.mealPlan &&
        e1?.workoutPlan == e2?.workoutPlan;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.age,
        e?.birthDate,
        e?.heightVal,
        e?.weightVal,
        e?.gender,
        e?.prescriptionData,
        e?.mealPlan,
        e?.workoutPlan
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
