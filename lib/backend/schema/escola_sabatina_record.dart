import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'escola_sabatina_record.g.dart';

abstract class EscolaSabatinaRecord
    implements Built<EscolaSabatinaRecord, EscolaSabatinaRecordBuilder> {
  static Serializer<EscolaSabatinaRecord> get serializer =>
      _$escolaSabatinaRecordSerializer;

  @nullable
  DateTime get data;

  @nullable
  String get nome;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(EscolaSabatinaRecordBuilder builder) =>
      builder..nome = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('escola_sabatina');

  static Stream<EscolaSabatinaRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  EscolaSabatinaRecord._();
  factory EscolaSabatinaRecord(
          [void Function(EscolaSabatinaRecordBuilder) updates]) =
      _$EscolaSabatinaRecord;

  static EscolaSabatinaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createEscolaSabatinaRecordData({
  DateTime data,
  String nome,
}) =>
    serializers.toFirestore(
        EscolaSabatinaRecord.serializer,
        EscolaSabatinaRecord((e) => e
          ..data = data
          ..nome = nome));
