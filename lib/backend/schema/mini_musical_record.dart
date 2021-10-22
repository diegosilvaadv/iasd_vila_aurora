import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'mini_musical_record.g.dart';

abstract class MiniMusicalRecord
    implements Built<MiniMusicalRecord, MiniMusicalRecordBuilder> {
  static Serializer<MiniMusicalRecord> get serializer =>
      _$miniMusicalRecordSerializer;

  @nullable
  String get cantor;

  @nullable
  DateTime get data;

  @nullable
  String get igreja;

  @nullable
  String get contato;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(MiniMusicalRecordBuilder builder) => builder
    ..cantor = ''
    ..igreja = ''
    ..contato = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mini_musical');

  static Stream<MiniMusicalRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  MiniMusicalRecord._();
  factory MiniMusicalRecord([void Function(MiniMusicalRecordBuilder) updates]) =
      _$MiniMusicalRecord;

  static MiniMusicalRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createMiniMusicalRecordData({
  String cantor,
  DateTime data,
  String igreja,
  String contato,
}) =>
    serializers.toFirestore(
        MiniMusicalRecord.serializer,
        MiniMusicalRecord((m) => m
          ..cantor = cantor
          ..data = data
          ..igreja = igreja
          ..contato = contato));
