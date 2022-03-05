// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'escola_sabatina_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EscolaSabatinaRecord> _$escolaSabatinaRecordSerializer =
    new _$EscolaSabatinaRecordSerializer();

class _$EscolaSabatinaRecordSerializer
    implements StructuredSerializer<EscolaSabatinaRecord> {
  @override
  final Iterable<Type> types = const [
    EscolaSabatinaRecord,
    _$EscolaSabatinaRecord
  ];
  @override
  final String wireName = 'EscolaSabatinaRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, EscolaSabatinaRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.nome;
    if (value != null) {
      result
        ..add('nome')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  EscolaSabatinaRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EscolaSabatinaRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'nome':
          result.nome = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$EscolaSabatinaRecord extends EscolaSabatinaRecord {
  @override
  final DateTime data;
  @override
  final String nome;
  @override
  final DocumentReference<Object> reference;

  factory _$EscolaSabatinaRecord(
          [void Function(EscolaSabatinaRecordBuilder) updates]) =>
      (new EscolaSabatinaRecordBuilder()..update(updates)).build();

  _$EscolaSabatinaRecord._({this.data, this.nome, this.reference}) : super._();

  @override
  EscolaSabatinaRecord rebuild(
          void Function(EscolaSabatinaRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EscolaSabatinaRecordBuilder toBuilder() =>
      new EscolaSabatinaRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EscolaSabatinaRecord &&
        data == other.data &&
        nome == other.nome &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, data.hashCode), nome.hashCode), reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EscolaSabatinaRecord')
          ..add('data', data)
          ..add('nome', nome)
          ..add('reference', reference))
        .toString();
  }
}

class EscolaSabatinaRecordBuilder
    implements Builder<EscolaSabatinaRecord, EscolaSabatinaRecordBuilder> {
  _$EscolaSabatinaRecord _$v;

  DateTime _data;
  DateTime get data => _$this._data;
  set data(DateTime data) => _$this._data = data;

  String _nome;
  String get nome => _$this._nome;
  set nome(String nome) => _$this._nome = nome;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  EscolaSabatinaRecordBuilder() {
    EscolaSabatinaRecord._initializeBuilder(this);
  }

  EscolaSabatinaRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data;
      _nome = $v.nome;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EscolaSabatinaRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EscolaSabatinaRecord;
  }

  @override
  void update(void Function(EscolaSabatinaRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$EscolaSabatinaRecord build() {
    final _$result = _$v ??
        new _$EscolaSabatinaRecord._(
            data: data, nome: nome, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
