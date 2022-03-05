// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'limpeza_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LimpezaRecord> _$limpezaRecordSerializer =
    new _$LimpezaRecordSerializer();

class _$LimpezaRecordSerializer implements StructuredSerializer<LimpezaRecord> {
  @override
  final Iterable<Type> types = const [LimpezaRecord, _$LimpezaRecord];
  @override
  final String wireName = 'LimpezaRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, LimpezaRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
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
    value = object.mes;
    if (value != null) {
      result
        ..add('mes')
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
  LimpezaRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LimpezaRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'nome':
          result.nome = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'mes':
          result.mes = serializers.deserialize(value,
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

class _$LimpezaRecord extends LimpezaRecord {
  @override
  final String nome;
  @override
  final DateTime data;
  @override
  final String mes;
  @override
  final DocumentReference<Object> reference;

  factory _$LimpezaRecord([void Function(LimpezaRecordBuilder) updates]) =>
      (new LimpezaRecordBuilder()..update(updates)).build();

  _$LimpezaRecord._({this.nome, this.data, this.mes, this.reference})
      : super._();

  @override
  LimpezaRecord rebuild(void Function(LimpezaRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LimpezaRecordBuilder toBuilder() => new LimpezaRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LimpezaRecord &&
        nome == other.nome &&
        data == other.data &&
        mes == other.mes &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc($jc(0, nome.hashCode), data.hashCode), mes.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LimpezaRecord')
          ..add('nome', nome)
          ..add('data', data)
          ..add('mes', mes)
          ..add('reference', reference))
        .toString();
  }
}

class LimpezaRecordBuilder
    implements Builder<LimpezaRecord, LimpezaRecordBuilder> {
  _$LimpezaRecord _$v;

  String _nome;
  String get nome => _$this._nome;
  set nome(String nome) => _$this._nome = nome;

  DateTime _data;
  DateTime get data => _$this._data;
  set data(DateTime data) => _$this._data = data;

  String _mes;
  String get mes => _$this._mes;
  set mes(String mes) => _$this._mes = mes;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  LimpezaRecordBuilder() {
    LimpezaRecord._initializeBuilder(this);
  }

  LimpezaRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nome = $v.nome;
      _data = $v.data;
      _mes = $v.mes;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LimpezaRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LimpezaRecord;
  }

  @override
  void update(void Function(LimpezaRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LimpezaRecord build() {
    final _$result = _$v ??
        new _$LimpezaRecord._(
            nome: nome, data: data, mes: mes, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
