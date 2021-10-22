import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'anuncios_record.g.dart';

abstract class AnunciosRecord
    implements Built<AnunciosRecord, AnunciosRecordBuilder> {
  static Serializer<AnunciosRecord> get serializer =>
      _$anunciosRecordSerializer;

  @nullable
  String get titulo;

  @nullable
  String get img;

  @nullable
  String get mensagem;

  @nullable
  DateTime get data;

  @nullable
  String get local;

  @nullable
  String get horario;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(AnunciosRecordBuilder builder) => builder
    ..titulo = ''
    ..img = ''
    ..mensagem = ''
    ..local = ''
    ..horario = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('anuncios');

  static Stream<AnunciosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  AnunciosRecord._();
  factory AnunciosRecord([void Function(AnunciosRecordBuilder) updates]) =
      _$AnunciosRecord;

  static AnunciosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createAnunciosRecordData({
  String titulo,
  String img,
  String mensagem,
  DateTime data,
  String local,
  String horario,
}) =>
    serializers.toFirestore(
        AnunciosRecord.serializer,
        AnunciosRecord((a) => a
          ..titulo = titulo
          ..img = img
          ..mensagem = mensagem
          ..data = data
          ..local = local
          ..horario = horario));
