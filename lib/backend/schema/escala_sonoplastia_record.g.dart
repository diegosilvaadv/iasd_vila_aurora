// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'escala_sonoplastia_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EscalaSonoplastiaRecord> _$escalaSonoplastiaRecordSerializer =
    new _$EscalaSonoplastiaRecordSerializer();

class _$EscalaSonoplastiaRecordSerializer
    implements StructuredSerializer<EscalaSonoplastiaRecord> {
  @override
  final Iterable<Type> types = const [
    EscalaSonoplastiaRecord,
    _$EscalaSonoplastiaRecord
  ];
  @override
  final String wireName = 'EscalaSonoplastiaRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, EscalaSonoplastiaRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.img;
    if (value != null) {
      result
        ..add('img')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nome;
    if (value != null) {
      result
        ..add('nome')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  EscalaSonoplastiaRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EscalaSonoplastiaRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'img':
          result.img = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'nome':
          result.nome = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$EscalaSonoplastiaRecord extends EscalaSonoplastiaRecord {
  @override
  final String img;
  @override
  final String nome;
  @override
  final DateTime data;
  @override
  final DocumentReference<Object> reference;

  factory _$EscalaSonoplastiaRecord(
          [void Function(EscalaSonoplastiaRecordBuilder) updates]) =>
      (new EscalaSonoplastiaRecordBuilder()..update(updates)).build();

  _$EscalaSonoplastiaRecord._({this.img, this.nome, this.data, this.reference})
      : super._();

  @override
  EscalaSonoplastiaRecord rebuild(
          void Function(EscalaSonoplastiaRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EscalaSonoplastiaRecordBuilder toBuilder() =>
      new EscalaSonoplastiaRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EscalaSonoplastiaRecord &&
        img == other.img &&
        nome == other.nome &&
        data == other.data &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc($jc(0, img.hashCode), nome.hashCode), data.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EscalaSonoplastiaRecord')
          ..add('img', img)
          ..add('nome', nome)
          ..add('data', data)
          ..add('reference', reference))
        .toString();
  }
}

class EscalaSonoplastiaRecordBuilder
    implements
        Builder<EscalaSonoplastiaRecord, EscalaSonoplastiaRecordBuilder> {
  _$EscalaSonoplastiaRecord _$v;

  String _img;
  String get img => _$this._img;
  set img(String img) => _$this._img = img;

  String _nome;
  String get nome => _$this._nome;
  set nome(String nome) => _$this._nome = nome;

  DateTime _data;
  DateTime get data => _$this._data;
  set data(DateTime data) => _$this._data = data;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  EscalaSonoplastiaRecordBuilder() {
    EscalaSonoplastiaRecord._initializeBuilder(this);
  }

  EscalaSonoplastiaRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _img = $v.img;
      _nome = $v.nome;
      _data = $v.data;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EscalaSonoplastiaRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EscalaSonoplastiaRecord;
  }

  @override
  void update(void Function(EscalaSonoplastiaRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$EscalaSonoplastiaRecord build() {
    final _$result = _$v ??
        new _$EscalaSonoplastiaRecord._(
            img: img, nome: nome, data: data, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
