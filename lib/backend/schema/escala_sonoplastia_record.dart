import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'escala_sonoplastia_record.g.dart';

abstract class EscalaSonoplastiaRecord
    implements Built<EscalaSonoplastiaRecord, EscalaSonoplastiaRecordBuilder> {
  static Serializer<EscalaSonoplastiaRecord> get serializer =>
      _$escalaSonoplastiaRecordSerializer;

  @nullable
  String get img;

  @nullable
  String get nome;

  @nullable
  DateTime get data;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(EscalaSonoplastiaRecordBuilder builder) =>
      builder
        ..img = ''
        ..nome = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('escala_sonoplastia');

  static Stream<EscalaSonoplastiaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  EscalaSonoplastiaRecord._();
  factory EscalaSonoplastiaRecord(
          [void Function(EscalaSonoplastiaRecordBuilder) updates]) =
      _$EscalaSonoplastiaRecord;

  static EscalaSonoplastiaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createEscalaSonoplastiaRecordData({
  String img,
  String nome,
  DateTime data,
}) =>
    serializers.toFirestore(
        EscalaSonoplastiaRecord.serializer,
        EscalaSonoplastiaRecord((e) => e
          ..img = img
          ..nome = nome
          ..data = data));
