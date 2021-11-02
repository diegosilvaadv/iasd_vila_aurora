import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'testedados_record.g.dart';

abstract class testedadosRecord
    implements Built<testedadosRecord, testedadosRecordBuilder> {
  static Serializer<testedadosRecord> get serializer =>
      _$testedadosRecordSerializer;

  @nullable
  DateTime get data;

  @nullable
  String get nome;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(testedadosRecordBuilder builder) =>
      builder..nome = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('testedados');

  static Stream<testedadosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  testedadosRecord._();
  factory testedadosRecord(
          [void Function(testedadosRecordBuilder) updates]) =
      _$testedadosRecord;

  static testedadosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createtestedadosRecordData({
  DateTime data,
  String nome,
}) =>
    serializers.toFirestore(
        testedadosRecord.serializer,
        testedadosRecord((e) => e
          ..data = data
          ..nome = nome));
