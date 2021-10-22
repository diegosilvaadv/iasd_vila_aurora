import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'limpeza_record.g.dart';

abstract class LimpezaRecord
    implements Built<LimpezaRecord, LimpezaRecordBuilder> {
  static Serializer<LimpezaRecord> get serializer => _$limpezaRecordSerializer;

  @nullable
  String get nome;

  @nullable
  DateTime get data;

  @nullable
  String get mes;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(LimpezaRecordBuilder builder) => builder
    ..nome = ''
    ..mes = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('limpeza');

  static Stream<LimpezaRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  LimpezaRecord._();
  factory LimpezaRecord([void Function(LimpezaRecordBuilder) updates]) =
      _$LimpezaRecord;

  static LimpezaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createLimpezaRecordData({
  String nome,
  DateTime data,
  String mes,
}) =>
    serializers.toFirestore(
        LimpezaRecord.serializer,
        LimpezaRecord((l) => l
          ..nome = nome
          ..data = data
          ..mes = mes));
