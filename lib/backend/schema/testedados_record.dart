import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'testedados_record.g.dart';

abstract class TestedadosRecord
    implements Built<TestedadosRecord, TestedadosRecordBuilder> {
  static Serializer<TestedadosRecord> get serializer =>
      _$testedadosRecordSerializer;

  @nullable
  DateTime get data;

  @nullable
  String get nome;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(TestedadosRecordBuilder builder) =>
      builder..nome = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('testedados');

  static Stream<TestedadosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  TestedadosRecord._();
  factory TestedadosRecord(
          [void Function(TestedadosRecordBuilder) updates]) =
      _$TestedadosRecord;

  static TestedadosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createTestedadosRecordData({
  DateTime data,
  String nome,
}) =>
    serializers.toFirestore(
        TestedadosRecord.serializer,
        TestedadosRecord((e) => e
          ..data = data
          ..nome = nome));
