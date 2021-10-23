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
  String get cantado;

  @nullable
  String get playback;

  @nullable
  String get tenor;

  @nullable
  String get barito;

  @nullable
  String get baixo;

  @nullable
  String get soprano;

  @nullable
  String get contralto;

  @nullable
  String get conjunto;

  @nullable
  String get letra;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(EnsaioMusicalRecordBuilder builder) => builder
    ..nomeMusica = ''
    ..cantado = ''
    ..playback = ''
    ..tenor = ''
    ..barito = ''
    ..baixo = ''
    ..soprano = ''
    ..contralto = ''
    ..conjunto = ''
    ..letra = '';

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
  String cantado,
  String playback,
  String tenor,
  String barito,
  String baixo,
  String soprano,
  String contralto,
  String conjunto,
  String letra,
}) =>
    serializers.toFirestore(
        EnsaioMusicalRecord.serializer,
        EnsaioMusicalRecord((e) => e
          ..nomeMusica = nomeMusica
          ..cantado = cantado
          ..playback = playback
          ..tenor = tenor
          ..barito = barito
          ..baixo = baixo
          ..soprano = soprano
          ..contralto = contralto
          ..conjunto = conjunto
          ..letra = letra));
