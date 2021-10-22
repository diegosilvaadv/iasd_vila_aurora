import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'escala_pregadores_record.g.dart';

abstract class EscalaPregadoresRecord
    implements Built<EscalaPregadoresRecord, EscalaPregadoresRecordBuilder> {
  static Serializer<EscalaPregadoresRecord> get serializer =>
      _$escalaPregadoresRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'img_pregador')
  String get imgPregador;

  @nullable
  DateTime get data;

  @nullable
  String get whatsapp;

  @nullable
  String get igreja;

  @nullable
  @BuiltValueField(wireName: 'nome_pregador')
  String get nomePregador;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(EscalaPregadoresRecordBuilder builder) =>
      builder
        ..imgPregador = ''
        ..whatsapp = ''
        ..igreja = ''
        ..nomePregador = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('escala_pregadores');

  static Stream<EscalaPregadoresRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  EscalaPregadoresRecord._();
  factory EscalaPregadoresRecord(
          [void Function(EscalaPregadoresRecordBuilder) updates]) =
      _$EscalaPregadoresRecord;

  static EscalaPregadoresRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createEscalaPregadoresRecordData({
  String imgPregador,
  DateTime data,
  String whatsapp,
  String igreja,
  String nomePregador,
}) =>
    serializers.toFirestore(
        EscalaPregadoresRecord.serializer,
        EscalaPregadoresRecord((e) => e
          ..imgPregador = imgPregador
          ..data = data
          ..whatsapp = whatsapp
          ..igreja = igreja
          ..nomePregador = nomePregador));
