import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CriacaoEventosRecord extends FirestoreRecord {
  CriacaoEventosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Evento" field.
  String? _evento;
  String get evento => _evento ?? '';
  bool hasEvento() => _evento != null;

  void _initializeFields() {
    _evento = snapshotData['Evento'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('criacao-eventos');

  static Stream<CriacaoEventosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CriacaoEventosRecord.fromSnapshot(s));

  static Future<CriacaoEventosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CriacaoEventosRecord.fromSnapshot(s));

  static CriacaoEventosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CriacaoEventosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CriacaoEventosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CriacaoEventosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CriacaoEventosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CriacaoEventosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCriacaoEventosRecordData({
  String? evento,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Evento': evento,
    }.withoutNulls,
  );

  return firestoreData;
}

class CriacaoEventosRecordDocumentEquality
    implements Equality<CriacaoEventosRecord> {
  const CriacaoEventosRecordDocumentEquality();

  @override
  bool equals(CriacaoEventosRecord? e1, CriacaoEventosRecord? e2) {
    return e1?.evento == e2?.evento;
  }

  @override
  int hash(CriacaoEventosRecord? e) => const ListEquality().hash([e?.evento]);

  @override
  bool isValidKey(Object? o) => o is CriacaoEventosRecord;
}
