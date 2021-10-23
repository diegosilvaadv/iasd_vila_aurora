import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'ensaio_musical_record.g.dart';

abstract class EnsaioMusicalRecord
    implements Built<EnsaioMusicalRecord, EnsaioMusicalRecordBuilder> {
  static Serializer<EnsaioMusicalRecord> get serializer =>
      _$ensaioMusicalRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'nome_musica')
  String get nomeMusica;

  @nullable
  String get letra;

  @nullable
  String get cantada;

  @nullable
  String get conjunto;

  @nullable
  int get url;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(EnsaioMusicalRecordBuilder builder) => builder
    ..nomeMusica = ''
    ..letra = ''
    ..cantada = ''
    ..conjunto = ''
    ..url = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ensaio_musical');

  static Stream<EnsaioMusicalRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  EnsaioMusicalRecord._();
  factory EnsaioMusicalRecord(
          [void Function(EnsaioMusicalRecordBuilder) updates]) =
      _$EnsaioMusicalRecord;

  static EnsaioMusicalRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createEnsaioMusicalRecordData({
  String nomeMusica,
  String letra,
  String cantada,
  String conjunto,
  int url,
}) =>
    serializers.toFirestore(
        EnsaioMusicalRecord.serializer,
        EnsaioMusicalRecord((e) => e
          ..nomeMusica = nomeMusica
          ..letra = letra
          ..cantada = cantada
          ..conjunto = conjunto
          ..url = url));
