import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'anotacoes_record.g.dart';

abstract class AnotacoesRecord
    implements Built<AnotacoesRecord, AnotacoesRecordBuilder> {
  static Serializer<AnotacoesRecord> get serializer =>
      _$anotacoesRecordSerializer;

  @nullable
  String get titulo;

  @nullable
  String get anotacao;

  @nullable
  DateTime get data;

  @nullable
  DocumentReference get users;

  @nullable
  bool get concluida;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(AnotacoesRecordBuilder builder) => builder
    ..titulo = ''
    ..anotacao = ''
    ..concluida = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('anotacoes');

  static Stream<AnotacoesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  AnotacoesRecord._();
  factory AnotacoesRecord([void Function(AnotacoesRecordBuilder) updates]) =
      _$AnotacoesRecord;

  static AnotacoesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createAnotacoesRecordData({
  String titulo,
  String anotacao,
  DateTime data,
  DocumentReference users,
  bool concluida,
}) =>
    serializers.toFirestore(
        AnotacoesRecord.serializer,
        AnotacoesRecord((a) => a
          ..titulo = titulo
          ..anotacao = anotacao
          ..data = data
          ..users = users
          ..concluida = concluida));
